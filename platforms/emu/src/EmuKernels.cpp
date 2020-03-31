#include "EmuKernels.h"
#include "emu_openmm.h"


// TODO: Implement this

using namespace OpenMM;
using namespace std;


static int getDataId(const ContextImpl& context) {
	const EmuPlatform::PlatformData* data = reinterpret_cast<const EmuPlatform::PlatformData*>(context.getPlatformData());
    return data->dataId;
}

void EmuCalcForcesAndEnergyKernel::initialize(const System& system) {
}

void EmuCalcForcesAndEnergyKernel::beginComputation(ContextImpl& context, bool includeForces, bool includeEnergy, int groups) {
    // TODO: Implement this
}

double EmuCalcForcesAndEnergyKernel::finishComputation(ContextImpl& context, bool includeForces, bool includeEnergy, int groups, bool& valid) {
    // TODO: Implement this
    return 0.0;
}

void EmuUpdateStateDataKernel::initialize(const System& system) {
}

double EmuUpdateStateDataKernel::getTime(const ContextImpl& context) const {
	int dataId = getDataId(context);

	// TODO: Implement this
	// Call rust function and pass 'dataId' to return time

    return 0.0;

}

void EmuUpdateStateDataKernel::setTime(ContextImpl& context, double time) {
    int dataId = getDataId(context);

    // TODO: Implement this
    // Call rust function and pass 'dataId', 'time'

}

void EmuUpdateStateDataKernel::getPositions(ContextImpl& context, std::vector<Vec3>& positions) {
	int dataId = getDataId(context);

    int numParticles = context.getSystem().getNumParticles();
    positions.resize(numParticles);

    // TODO: Implement this
    // Call rust function and pass 'dataId', 'positions', 'numParticles'
}

void EmuUpdateStateDataKernel::setPositions(ContextImpl& context, const std::vector<Vec3>& positions) {
	int dataId = getDataId(context);
    int numParticles = context.getSystem().getNumParticles();
    
    // TODO: Implement this
    // Call rust function and pass 'dataId', 'positions', 'numParticles'
}

void EmuUpdateStateDataKernel::getVelocities(ContextImpl& context, std::vector<Vec3>& velocities) {
	int dataId = getDataId(context);
    int numParticles = context.getSystem().getNumParticles();
    velocities.resize(numParticles);

    // TODO: Implement this
    // Call rust function and pass 'dataId', 'numParticles', 'velocities'
}

void EmuUpdateStateDataKernel::setVelocities(ContextImpl& context, const std::vector<Vec3>& velocities) {
	int dataId = getDataId(context);
    int numParticles = context.getSystem().getNumParticles();

    // TODO: Implement this
    // Call rust function and pass 'dataId', 'numParticles', 'velocities'
}

void EmuUpdateStateDataKernel::getForces(ContextImpl& context, std::vector<Vec3>& forces) {
    int dataId = getDataId(context);
    int numParticles = context.getSystem().getNumParticles();
    forces.resize(numParticles);

    // TODO: Implement this
    // Call rust function and pass 'dataId', 'numParticles', 'forces'
}

void EmuUpdateStateDataKernel::getEnergyParameterDerivatives(ContextImpl& context, map<string, double>& derivs) {
	int dataId = getDataId(context);

    // TODO: Implement this
    // Call rust function and pass 'dataId', 'derivs'
}

void EmuUpdateStateDataKernel::getPeriodicBoxVectors(ContextImpl& context, Vec3& a, Vec3& b, Vec3& c) const {
    int dataId = getDataId(context);

    // TODO: Implement this
    // Call rust function
}

void EmuUpdateStateDataKernel::setPeriodicBoxVectors(ContextImpl& context, const Vec3& a, const Vec3& b, const Vec3& c) {
    int dataId = getDataId(context);

    // TODO: Implement this
    // Call rust function
}

void EmuUpdateStateDataKernel::createCheckpoint(ContextImpl& context, ostream& stream) {
    // TODO: Implement this
}

void EmuUpdateStateDataKernel::loadCheckpoint(ContextImpl& context, istream& stream) {
    // TODO: Implement this
}


void EmuApplyConstraintsKernel::initialize(const System& system) {
    // TODO: Implement this
}

EmuApplyConstraintsKernel::~EmuApplyConstraintsKernel() {
}

void EmuApplyConstraintsKernel::apply(ContextImpl& context, double tol) {
    // TODO: Implement this
}

void EmuApplyConstraintsKernel::applyToVelocities(ContextImpl& context, double tol) {
    // TODO: Implement this
}


void EmuVirtualSitesKernel::initialize(const System& system) {
}

void EmuVirtualSitesKernel::computePositions(ContextImpl& context) {
    // TODO: Implement this
}
