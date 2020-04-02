#include "EmuPlatform.h"
#include "EmuKernels.h"
#include "EmuKernelFactory.h"
#include "emu_openmm.h"
#include "openmm/internal/ContextImpl.h"
#include "openmm/Vec3.h"

using namespace OpenMM;
using namespace std;

#ifdef OPENMM_EMU_BUILDING_STATIC_LIBRARY
extern "C" void registerEmuPlatform() {
    Platform::registerPlatform(new EmuPlatform());
}
#else
extern "C" OPENMM_EXPORT_EMU void registerPlatforms() {
    Platform::registerPlatform(new EmuPlatform());
}
#endif

int EmuPlatform::numContexts;

EmuPlatform::EmuPlatform() {
    EmuKernelFactory* factory = new EmuKernelFactory();
    
    // currently, we only support the basic minimum required to run the code in the HelloArgon example
    registerKernelFactory(CalcForcesAndEnergyKernel::Name(), factory);
    registerKernelFactory(UpdateStateDataKernel::Name(), factory);
    registerKernelFactory(ApplyConstraintsKernel::Name(), factory);
    registerKernelFactory(VirtualSitesKernel::Name(), factory);
    registerKernelFactory(IntegrateVerletStepKernel::Name(), factory);
}

double EmuPlatform::getSpeed() const {
    return 5; // this was just an estimate, a better cost model may be appropriate later on
}

bool EmuPlatform::supportsDoublePrecision() const {
    return true; // Emu uses GLSL and WebGPU so 64-bit precision is supported
}


void EmuPlatform::contextCreated(ContextImpl& context, const map<string, string>& properties) const {
    create_context(numContexts, context.getSystem().getNumParticles()); // create on Rust side
    context.setPlatformData(new PlatformData(context.getSystem(), numContexts)); // create on C++ side
    numContexts += 1; // we use a unique context ID for each context created
}

void EmuPlatform::linkedContextCreated(ContextImpl& context, ContextImpl& originalContext) const {
}

void EmuPlatform::contextDestroyed(ContextImpl& context) const {
    PlatformData* data = reinterpret_cast<PlatformData*>(context.getPlatformData());
    destroy_context(data->contextId);
    delete data;
}

EmuPlatform::PlatformData::PlatformData(const System& system, int contextId) : 
                                        contextId(contextId) {
}

EmuPlatform::PlatformData::~PlatformData() {
}

