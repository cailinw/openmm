#ifndef OPENMM_EMUKERNELFACTORY_H_
#define OPENMM_EMUKERNELFACTORY_H_


#include "openmm/KernelFactory.h"

namespace OpenMM {

/**
 * This KernelFactory creates all kernels for EmuPlatform.
 */

class EmuKernelFactory : public KernelFactory {
public:
    KernelImpl* createKernelImpl(std::string name, const Platform& platform, ContextImpl& context) const;
};

} // namespace OpenMM

#endif /*OPENMM_EMUKERNELFACTORY_H_*/
