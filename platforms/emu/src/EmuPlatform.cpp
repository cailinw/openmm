#include "EmuPlatform.h"
#include "openmm/internal/ContextImpl.h"

using namespace OpenMM;
using namespace std;


#ifdef OPENMM_COMMON_BUILDING_STATIC_LIBRARY
extern "C" void registerEmuPlatform() {
    Platform::registerPlatform(new EmuPlatform());
}
#else
extern "C" OPENMM_EXPORT_COMMON void registerPlatforms() {
    Platform::registerPlatform(new EmuPlatform());
}
#endif


EmuPlatform::EmuPlatform() : numContexts(0) {
    EmuKernelFactory* factory = new EmuKernelFactory();
    
    // TODO: Implement this
    // For each kernel, registerKernelFactory()
    //registerKernelFactory(CalcForcesAndEnergyKernel::Name(), factory);
    registerKernelFactory(UpdateStateDataKernel::Name(), factory);

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


void EmuPlatform::contextCreated(ContextImpl& context, const map<string, string>& properties) const {

	// TODO: Implement this
    // Initialize data and allocate space


    context.setPlatformData(new PlatformData(context.getSystem()), numContexts);
    numContexts += 1;
}

void EmuPlatform::linkedContextCreated(ContextImpl& context, ContextImpl& originalContext) const {
    // TODO: Implement this
}

void EmuPlatform::contextDestroyed(ContextImpl& context) const {
    PlatformData* data = reinterpret_cast<PlatformData*>(context.getPlatformData());
    delete data;
}

EmuPlatform::PlatformData::PlatformData(const System& system, int nextDataId) : context(context),
                                        time(0.0), stepCount(0), numParticles(system.getNumParticles()),
                                        dataId(nextDataId) {

	// TODO: Implement this


}

EmuPlatform::PlatformData::~PlatformData() {
	// TODO: Implement this
}

