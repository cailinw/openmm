#ifndef EMU_OPENMM
#define EMU_OPENMM

#ifdef __cplusplus
extern "C" {
#endif

// data structure that corresponds to the Vec3 on the C++ side as well as the Rust side
struct CommonVec3 {
    double data[3];
};

// context management
void create_context(int context_id, int num_particles);
void destroy_context(int context_id);

// functions used for UpdateStateKernel
double get_time(int context_id);
void set_time(int context_id, double time);
void get_positions(int context_id, CommonVec3* positions);
void set_positions(int context_id, const CommonVec3* positions);
void get_velocities(int context_id, CommonVec3* velocities);
void set_velocities(int context_id, const CommonVec3* velocities);
void get_forces(int context_id, CommonVec3* forces);
void get_energy_parameter_derivatives(int context_id, std::map<std::string, double>* derivs);
void get_periodic_box_vectors(int context_id, CommonVec3* a, CommonVec3* b, CommonVec3* c);
void set_periodic_box_vectors(int context_id, CommonVec3* a, CommonVec3* b, CommonVec3* c);

#ifdef __cplusplus
}
#endif

#endif /* EMU_OPENMM */