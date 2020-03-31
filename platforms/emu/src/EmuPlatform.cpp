#include "EmuPlatform.h"
#include "EmuKernels.h"
#include "EmuKernelFactory.h"
#include "openmm/internal/ContextImpl.h"
#include "emu_openmm.h"
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


EmuPlatform::EmuPlatform() : numContexts(0) {
    EmuKernelFactory* factory = new EmuKernelFactory();
    
    // TODO: Implement this
    // For each kernel, registerKernelFactory()
    registerKernelFactory(CalcForcesAndEnergyKernel::Name(), factory);
    registerKernelFactory(UpdateStateDataKernel::Name(), factory);
    registerKernelFactory(ApplyConstraintsKernel::Name(), factory);
    registerKernelFactory(VirtualSitesKernel::Name(), factory);
    registerKernelFactory(IntegrateVerletStepKernel::Name(), factory);

    vector<Vec3> v;
    v.push_back(Vec3());
    v.push_back(Vec3());
    v.push_back(Vec3());
    v.push_back(Vec3());
    do_something_on_gpu((CommonVec3*) v.data());
    printf("%f\n", v[0].dot(v[0]));
}

double EmuPlatform::getSpeed() const {

	// TODO: Implment this

    return 5;
}

bool EmuPlatform::supportsDoublePrecision() const {
    return true;
}

// TODO: Do we have platform specific properties?
// getPropertyNames()
// getPropertyValue()
// setPropertyValue()
// getPropertyDefaultValue()
// setPropertyDefaultValue()


void EmuPlatform::contextCreated(ContextImpl& context, const map<string, string>& properties) {

	// TODO: Implement this
    // Initialize data and allocate space


    context.setPlatformData(new PlatformData(context.getSystem(), numContexts));
    numContexts += 1;
}

void EmuPlatform::linkedContextCreated(ContextImpl& context, ContextImpl& originalContext) const {
    // TODO: Implement this
}

void EmuPlatform::contextDestroyed(ContextImpl& context) const {
    PlatformData* data = reinterpret_cast<PlatformData*>(context.getPlatformData());
    delete data;
}

EmuPlatform::PlatformData::PlatformData(const System& system, int contextId) : 
                                        contextId(contextId) {

    // TODO: Implement this
}

EmuPlatform::PlatformData::~PlatformData() {
	// TODO: Implement this
}

