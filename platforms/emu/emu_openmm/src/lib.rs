use emu_core::prelude::*;
use emu_glsl::*;
use zerocopy::*;

use std::sync::Mutex;
use std::collections::{HashMap, BTreeMap};
use std::convert::TryInto;

#[macro_use]
extern crate lazy_static;

// this just creates a global variable to store all the contexts
// the HashMap is wrapped in a Mutex to ensure safe global usage
// lazy_static will lazily do the below assignment - specifically, CONTEXTS will be assigned the below value on the first time its used
// example usage of lazy_static: https://stackoverflow.com/questions/27791532/how-do-i-create-a-global-mutable-singleton
lazy_static! {
    static ref CONTEXTS: Mutex<HashMap<i32, Context>> = Mutex::new(HashMap::new());
}

// Repr(C) ensures that this has the same memory alignment as a C struct would
// each of the things in #[derive()] are traits (kind of like interfaces) whose implementations are automatically derived by derive macros
// these derive macros have been defined elsewhere and enable safe transmution of data to/from bytes stored on GPU as well compile-time reflection to generate GLSL code
#[repr(C)]
#[derive(AsBytes, FromBytes, Copy, Clone, Default, Debug, GlslStruct)]
pub struct Vec3 {
    data: [f64; 3] // GlslStruct's derive will convert this to a GLSL vec3
}

// this says which version of the data is most up to date
#[derive(Eq, PartialEq)]
enum UpToDate {
    CpuGpu, // this means data is up to date across CPU and GPU
    Cpu, // this says CPU is the correct version
    Gpu // this says GPU is latest
}

struct Context {
    // some simple maintained values...
    time: f64,
    num_particles: i32,
    // for each of these, we store a tuple containing GPU and CPU versions
    positions: (DeviceBox<[Vec3]>, Vec<Vec3>, UpToDate), // DeviceBox is a wrapper type that denotes anything that exists on the GPU
    velocities: (DeviceBox<[Vec3]>, Vec<Vec3>, UpToDate), // in this case, we have a slice of Vec3 that is on the GPU
    forces: (DeviceBox<[Vec3]>, Vec<Vec3>, UpToDate), // it's called DeviceBox because its boxed (https://en.wikipedia.org/wiki/Object_type_(object-oriented_programming)#Boxing) but boxed on the GPU
    // we just store this in a map to convert from C++ map<string, double>, it's possible this isn't the best way to do this
    energy_parameter_derivatives: BTreeMap<std::ffi::CString, f64>,
    periodic_box_vectors: [Vec3; 3],
}

#[no_mangle]
pub extern "C" fn create_context(context_id: i32, num_particles: i32) {
    futures::executor::block_on(assert_device_pool_initialized()); // this asserts that Emu has loaded all devices
    let num_particles = num_particles as usize;

    CONTEXTS.lock().unwrap().insert(context_id, Context {
        time: 0.0,
        num_particles: num_particles as i32,
        positions: (DeviceBox::with_size(std::mem::size_of::<Vec3>() * num_particles).unwrap(), vec![Default::default(); num_particles], UpToDate::CpuGpu),
        velocities: (DeviceBox::with_size(std::mem::size_of::<Vec3>() * num_particles).unwrap(), vec![Default::default(); num_particles], UpToDate::CpuGpu),
        forces: (DeviceBox::with_size(std::mem::size_of::<Vec3>() * num_particles).unwrap(), vec![Default::default(); num_particles], UpToDate::CpuGpu),
        energy_parameter_derivatives: BTreeMap::new(),
        periodic_box_vectors: [Default::default(); 3]
    });
}

#[no_mangle]
pub extern "C" fn destroy_context(context_id: i32) {
    CONTEXTS.lock().unwrap().remove(&context_id);
}

// just a macro to create a few functions that let us sync the CPU and GPU versions of data
macro_rules! make_sync_functions {
    ($context_data_ident:ident) => {
        mod $context_data_ident {
            use super::*;

            // sync for when accessing/mutating CPU data
            pub fn sync_for_cpu_usage(context_id: i32) {
                if CONTEXTS.lock().unwrap().get(&context_id).unwrap().$context_data_ident.2 == UpToDate::Gpu {
                    futures::executor::block_on(assert_device_pool_initialized());
                    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().$context_data_ident.1 = futures::executor::block_on(CONTEXTS.lock().unwrap().get(&context_id).unwrap().$context_data_ident.0.get()).unwrap().into();
                    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().$context_data_ident.2 = UpToDate::CpuGpu;
                }
            }

            // sync for when accessing/mutating CPU data
            pub fn sync_for_gpu_usage(context_id: i32) {
                if CONTEXTS.lock().unwrap().get(&context_id).unwrap().$context_data_ident.2 == UpToDate::Cpu {
                    futures::executor::block_on(assert_device_pool_initialized());
                    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().$context_data_ident.0.set(CONTEXTS.lock().unwrap().get(&context_id).unwrap().$context_data_ident.1.as_slice());
                    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().$context_data_ident.2 = UpToDate::CpuGpu;
                }
            }
        }
    }
}

make_sync_functions!(positions);
make_sync_functions!(velocities);
make_sync_functions!(forces);

#[no_mangle]
pub extern "C" fn get_time(context_id: i32) -> f64 {
    CONTEXTS.lock().unwrap().get(&context_id).unwrap().time
}

#[no_mangle]
pub extern "C" fn set_time(context_id: i32, time: f64) {
    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().time = time;
}

#[no_mangle]
pub extern "C" fn get_positions(context_id: i32, positions: *mut Vec3) {
    positions::sync_for_cpu_usage(context_id);
    // our functions accept pointers but pointers is not what Rustaceans prefer to work with
    // usually, we work with references to things
    // and when we're working with contiguous data, we have reference to _slices_ of data
    // 
    // in this case, we convert the pointer to a mutable reference to a slice (this is unsafe because the pointer does not have Rust's usual guarantees regarding references)
    // then, we clone the CPU version of data into that slice
    let positions_slice: &mut [Vec3] = unsafe { std::slice::from_raw_parts_mut(positions, CONTEXTS.lock().unwrap().get(&context_id).unwrap().num_particles.try_into().unwrap()) };
    positions_slice.clone_from_slice(&CONTEXTS.lock().unwrap().get(&context_id).unwrap().positions.1);
}

#[no_mangle]
pub extern "C" fn set_positions(context_id: i32, positions: *const Vec3) {
    positions::sync_for_cpu_usage(context_id);
    let positions_slice: &[Vec3] = unsafe { std::slice::from_raw_parts(positions, CONTEXTS.lock().unwrap().get(&context_id).unwrap().num_particles.try_into().unwrap()) };
    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().positions.1.clone_from_slice(positions_slice);
    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().positions.2 = UpToDate::Cpu;
}

#[no_mangle]
pub extern "C" fn get_velocities(context_id: i32, velocities: *mut Vec3) {
    velocities::sync_for_cpu_usage(context_id);
    let velocities_slice: &mut [Vec3] = unsafe { std::slice::from_raw_parts_mut(velocities, CONTEXTS.lock().unwrap().get(&context_id).unwrap().num_particles.try_into().unwrap()) };
    velocities_slice.clone_from_slice(&CONTEXTS.lock().unwrap().get(&context_id).unwrap().velocities.1);
}

#[no_mangle]
pub extern "C" fn set_velocities(context_id: i32, velocities: *const Vec3) {
    velocities::sync_for_cpu_usage(context_id);
    let velocities_slice: &[Vec3] = unsafe { std::slice::from_raw_parts(velocities, CONTEXTS.lock().unwrap().get(&context_id).unwrap().num_particles.try_into().unwrap()) };
    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().velocities.1.clone_from_slice(velocities_slice);
    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().velocities.2 = UpToDate::Cpu;
}

#[no_mangle]
pub extern "C" fn get_forces(context_id: i32, forces: *mut Vec3) {
    forces::sync_for_cpu_usage(context_id);
    let forces_slice: &mut [Vec3] = unsafe { std::slice::from_raw_parts_mut(forces, CONTEXTS.lock().unwrap().get(&context_id).unwrap().num_particles.try_into().unwrap()) };
    forces_slice.clone_from_slice(&CONTEXTS.lock().unwrap().get(&context_id).unwrap().forces.1);
}

#[no_mangle]
pub extern "C" fn get_energy_parameter_derivatives(context_id: i32, deriv: *mut BTreeMap<std::ffi::CString, f64>) {
    let deriv_mut = unsafe { deriv.as_mut().unwrap() };
    // TODO maybe this shouldn't clone
    *deriv_mut = CONTEXTS.lock().unwrap().get(&context_id).unwrap().energy_parameter_derivatives.clone();
}

#[no_mangle]
pub extern "C" fn get_periodic_box_vectors(context_id: i32, a: *mut Vec3, b: *mut Vec3, c: *mut Vec3) {
    let a_mut = unsafe { a.as_mut().unwrap() };
    let b_mut = unsafe { b.as_mut().unwrap() };
    let c_mut = unsafe { c.as_mut().unwrap() };
    *a_mut = CONTEXTS.lock().unwrap().get(&context_id).unwrap().periodic_box_vectors[0].clone();
    *b_mut = CONTEXTS.lock().unwrap().get(&context_id).unwrap().periodic_box_vectors[1].clone();
    *c_mut = CONTEXTS.lock().unwrap().get(&context_id).unwrap().periodic_box_vectors[2].clone();
}

#[no_mangle]
pub extern "C" fn set_periodic_box_vectors(context_id: i32, a: *const Vec3, b: *const Vec3, c: *const Vec3) {
    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().periodic_box_vectors[0] = unsafe { *a };
    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().periodic_box_vectors[1] = unsafe { *b };
    CONTEXTS.lock().unwrap().get_mut(&context_id).unwrap().periodic_box_vectors[2] = unsafe { *c };
}