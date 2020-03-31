#ifndef EMU_OPENMM
#define EMU_OPENMM

#ifdef __cplusplus
extern "C" {
#endif

struct CommonVec3 {
    double data[3];
};

void do_something_on_gpu(CommonVec3* data);

#ifdef __cplusplus
}
#endif

#endif /* EMU_OPENMM */