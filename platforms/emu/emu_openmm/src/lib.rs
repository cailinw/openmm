use emu_core::prelude::*;
use emu_glsl::*;
use zerocopy::*;

#[repr(C)]
#[derive(AsBytes, FromBytes, Copy, Clone, Default, Debug, GlslStruct)]
struct Shape {
    x: u32,
    y: u32,
    w: i32,
    h: i32,
    r: [i32; 2]
}

#[repr(C)]
#[derive(AsBytes, FromBytes, Copy, Clone, Default, Debug, GlslStruct)]
pub struct Vec3 {
    data: [f64; 3]
}

#[no_mangle]
pub extern "C" fn do_something_on_gpu(data: *mut Vec3) {
    futures::executor::block_on(assert_device_pool_initialized());
    let slice: &mut [Vec3] = unsafe { std::slice::from_raw_parts_mut(data, 4) };
    slice[0] = Vec3 {
        data: [1.0; 3]
    };
    slice[1] = Vec3 {
        data: [1.0; 3]
    };

    let slice_on_gpu: DeviceBox<[Vec3]> = slice.as_device_boxed().unwrap();
    println!("{:?}", futures::executor::block_on(slice_on_gpu.get()).unwrap());

    // ensure that a device pool has been initialized
    // this should be called before every time when you assume you have devices to use
    // that goes for both library users and application users
    futures::executor::block_on(assert_device_pool_initialized());

    // create some data on GPU
    // even mutate it once loaded to GPU
    let mut shapes: DeviceBox<[Shape]> = vec![Default::default(); 1024].as_device_boxed().unwrap();
    let mut x: DeviceBox<[i32]> = vec![0; 1024].as_device_boxed().unwrap();
    shapes.set(vec![Shape {
        x: 0,
        y: 0,
        w: 100,
        h: 100,
        r: [2, 9]
    }; 1024]);

    // compiel some code
    // then, run it
    let c = compile::<GlslKernel, GlslKernelCompile, _, GlobalCache>(
        GlslKernel::new()
            .spawn(1)
            .param_mut("Shape[] shapes")
            .param_mut("int[] x")
            .with_struct::<Shape>()
            .with_helper_code(
                r#"
Shape flip(Shape s) {
    s.x = s.x + s.w;
    s.y = s.y + s.h;
    s.w *= -1;
    s.h *= -1;
    s.r = ivec2(5, 3);
    return s;
}
"#,
            )
            .with_kernel_code(
                "shapes[gl_GlobalInvocationID.x] = flip(shapes[gl_GlobalInvocationID.x]); x[gl_GlobalInvocationID.x] = 100;",
            ),
    ).unwrap();
    unsafe {
        spawn(1024).launch(call!(c, &mut shapes, &mut x)).unwrap();
    }

    // download from GPU and print out
    println!("{:?}", futures::executor::block_on(shapes.get()).unwrap());
    println!("{:?}", futures::executor::block_on(x.get()).unwrap());
}