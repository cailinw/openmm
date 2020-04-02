#include "EmuKernels.h"
#include "emu_openmm.h"
#include "ReferenceVerletDynamics.h"
#include "openmm/Integrator.h"
#include "openmm/Vec3.h"

using namespace OpenMM;
using namespace std;

// this file is where most of the work to finish the Emu platform needs to happen
// only the UpdateStateDataKernel has been implemented
// we haven't done anything else mainly because we were having a hard time grokking the underlying algorithms

// this just gets us the context ID that can be used by the Rust side to index into the correct context
static int getContextId(const ContextImpl& context) {
	const EmuPlatform::PlatformData* data = reinterpret_cast<const EmuPlatform::PlatformData*>(context.getPlatformData());
    return data->contextId;
}

void EmuCalcForcesAndEnergyKernel::initialize(const System& system) {
}

void EmuCalcForcesAndEnergyKernel::beginComputation(ContextImpl& context, bool includeForces, bool includeEnergy, int groups) {
    // TODO Implement this
}

double EmuCalcForcesAndEnergyKernel::finishComputation(ContextImpl& context, bool includeForces, bool includeEnergy, int groups, bool& valid) {
    // TODO Implement this
    return 0.0;
}

void EmuUpdateStateDataKernel::initialize(const System& system) {
}

double EmuUpdateStateDataKernel::getTime(const ContextImpl& context) const {
	int contextId = getContextId(context);
	return get_time(contextId);

}

void EmuUpdateStateDataKernel::setTime(ContextImpl& context, double time) {
    int contextId = getContextId(context);
    set_time(contextId, time);
}

void EmuUpdateStateDataKernel::getPositions(ContextImpl& context, std::vector<Vec3>& positions) {
	int contextId = getContextId(context);

    // make sure the vector has correct number
    int numParticles = context.getSystem().getNumParticles();
    positions.resize(numParticles);

    get_positions(contextId, (CommonVec3*) positions.data());
}

void EmuUpdateStateDataKernel::setPositions(ContextImpl& context, const std::vector<Vec3>& positions) {
	int contextId = getContextId(context);
    set_positions(contextId, (CommonVec3*) positions.data());
}

void EmuUpdateStateDataKernel::getVelocities(ContextImpl& context, std::vector<Vec3>& velocities) {
    int contextId = getContextId(context);

    // make sure the vector has correct number
    int numParticles = context.getSystem().getNumParticles();
    velocities.resize(numParticles);

    get_velocities(contextId, (CommonVec3*) velocities.data());
}

void EmuUpdateStateDataKernel::setVelocities(ContextImpl& context, const std::vector<Vec3>& velocities) {
    int contextId = getContextId(context);
    set_velocities(contextId, (const CommonVec3*) velocities.data());
}

void EmuUpdateStateDataKernel::getForces(ContextImpl& context, std::vector<Vec3>& forces) {
    int contextId = getContextId(context);

    // make sure the vector has correct number
    int numParticles = context.getSystem().getNumParticles();
    forces.resize(numParticles);
    get_forces(contextId, (CommonVec3*) forces.data());
}

void EmuUpdateStateDataKernel::getEnergyParameterDerivatives(ContextImpl& context, map<string, double>& derivs) {
	int contextId = getContextId(context);
    // TODO check that this is actually doing expected behavior
    get_energy_parameter_derivatives(contextId, &derivs);
}

void EmuUpdateStateDataKernel::getPeriodicBoxVectors(ContextImpl& context, Vec3& a, Vec3& b, Vec3& c) const {
    int contextId = getContextId(context);
    get_periodic_box_vectors(contextId, (CommonVec3*) &a, (CommonVec3*) &b, (CommonVec3*) &c);
}

void EmuUpdateStateDataKernel::setPeriodicBoxVectors(ContextImpl& context, const Vec3& a, const Vec3& b, const Vec3& c) {
    int contextId = getContextId(context);
    set_periodic_box_vectors(contextId, (CommonVec3*) &a, (CommonVec3*) &b, (CommonVec3*) &c);
}

void EmuUpdateStateDataKernel::createCheckpoint(ContextImpl& context, ostream& stream) {
    // TODO Implement this
}

void EmuUpdateStateDataKernel::loadCheckpoint(ContextImpl& context, istream& stream) {
    // TODO Implement this
}


void EmuApplyConstraintsKernel::initialize(const System& system) {
    // TODO Implement this
}

EmuApplyConstraintsKernel::~EmuApplyConstraintsKernel() {
}

void EmuApplyConstraintsKernel::apply(ContextImpl& context, double tol) {
    // TODO Implement this
}

void EmuApplyConstraintsKernel::applyToVelocities(ContextImpl& context, double tol) {
    // TODO Implement this
}


void EmuVirtualSitesKernel::initialize(const System& system) {
}

void EmuVirtualSitesKernel::computePositions(ContextImpl& context) {
    // TODO Implement this
}

EmuIntegrateVerletStepKernel::~EmuIntegrateVerletStepKernel() {
}

void EmuIntegrateVerletStepKernel::initialize(const System& system, const VerletIntegrator& integrator) {
    // TODO Implement this
}

void EmuIntegrateVerletStepKernel::execute(ContextImpl& context, const VerletIntegrator& integrator) {
    // TODO Implement this
}

double EmuIntegrateVerletStepKernel::computeKineticEnergy(ContextImpl& context, const VerletIntegrator& integrator) {
    // TODO Implement this
    return 0.0;
}
