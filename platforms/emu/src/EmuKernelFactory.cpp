#include "EmuKernelFactory.h"
#include "EmuKernels.h"
#include "openmm/internal/ContextImpl.h"
#include "openmm/OpenMMException.h"

using namespace OpenMM;

KernelImpl* EmuKernelFactory::createKernelImpl(std::string name, const Platform& platform, ContextImpl& context) const {
    EmuPlatform::PlatformData& data = *static_cast<EmuPlatform::PlatformData*>(context.getPlatformData());
    int contextId = data.contextId;
    
    // TODO: Implement this
    // Depending on given name, create and return a new KernelImpl object

    // if (name == CalcForcesAndEnergyKernel::Name())
    //     return new EmuCalcForcesAndEnergyKernel(name, platform);
    // if (name == UpdateStateDataKernel::Name())
    //     return new EmuUpdateStateDataKernel(name, platform);
    // if (name == ApplyConstraintsKernel::Name())
    //     return new EmuApplyConstraintsKernel(name, platform);
    // if (name == VirtualSitesKernel::Name())
    //     return new EmuVirtualSitesKernel(name);

    throw OpenMMException((std::string("Tried to create kernel with illegal kernel name '") + name + "'").c_str());
}
