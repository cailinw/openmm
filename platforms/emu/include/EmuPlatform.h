#ifndef OPENMM_EMUPLATFORM_H_
#define OPENMM_EMUPLATFORM_H_

namespace OpenMM {

class OPENMM_EXPORT_COMMON EmuPlatform : public Platform {
public:
    class PlatformData;
    EmuPlatform();
    const std::string& getName() const {
        static const std::string name = "EMU";
        return name;
    }
    double getSpeed() const;
    bool supportsDoublePrecision() const;
    // const std::string& getPropertyValue(const Context& context, const std::string& property) const;
    // void setPropertyValue(Context& context, const std::string& property, const std::string& value) const;
    void contextCreated(ContextImpl& context, const std::map<std::string, std::string>& properties) const;
    void linkedContextCreated(ContextImpl& context, ContextImpl& originalContext) const;
    void contextDestroyed(ContextImpl& context) const;
};

class OPENMM_EXPORT_COMMON EmuPlatform::PlatformData {
public:
    PlatformData(const System& system);
    ~PlatformData();

    // TODO: Implement this
    
};

} // namespace OpenMM

#endif /*OPENMM_EMUPLATFORM_H_*/