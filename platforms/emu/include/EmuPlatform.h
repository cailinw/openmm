#ifndef OPENMM_EMUPLATFORM_H_
#define OPENMM_EMUPLATFORM_H_

#include "openmm/Platform.h"
#include "openmm/System.h"
#include "openmm/internal/ContextImpl.h"
#include "windowsExportEmu.h"
#include <map>
#include <vector>

namespace OpenMM {

class OPENMM_EXPORT_EMU EmuPlatform : public Platform {
public:
    class PlatformData;
    EmuPlatform();
    const std::string& getName() const {
        static const std::string name = "EMU";
        return name;
    }
    double getSpeed() const;
    bool supportsDoublePrecision() const;
    void contextCreated(ContextImpl& context, const std::map<std::string, std::string>& properties) const;
    void linkedContextCreated(ContextImpl& context, ContextImpl& originalContext) const;
    void contextDestroyed(ContextImpl& context) const;
private:
    static int numContexts;
};

// PlatformData is basically just a newtype wrapping contextId
// we try to keep all state for each context on the Rust side and only keep the context ID on the C++ side
class OPENMM_EXPORT_EMU EmuPlatform::PlatformData {
public:
    PlatformData(const System& system, int contextId);
    ~PlatformData();

    int contextId;    
};

} // namespace OpenMM

#endif /*OPENMM_EMUPLATFORM_H_*/
