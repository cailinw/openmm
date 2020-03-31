#include "EmuKernels.h"


// TODO: Implement this

using namespace OpenMM;
using namespace std;


// static int getDataId(const ContextImpl& context) {
// 	const EmuPlatform::PlatformData* data = reinterpret_cast<const EmuPlatform::PlatformData*>(context.getPlatformData());
//     return data->dataId;
// }



// void EmuUpdateStateDataKernel::initialize(const System& system) {
// }

// double EmuUpdateStateDataKernel::getTime(const ContextImpl& context) const {
// 	int dataId = getDataId(context);

// 	// TODO: Implement this
// 	// Call rust function and pass 'dataId' to return time

//     return 0;

// }

// void EmuUpdateStateDataKernel::setTime(ContextImpl& context, double time) {
//     int dataId = getDataId(context);

//     // TODO: Implement this
//     // Call rust function and pass 'dataId', 'time'

// }

// void EmuUpdateStateDataKernel::getPositions(ContextImpl& context, std::vector<Vec3>& positions) {
// 	int dataId = getDataId(context);

//     int numParticles = context.getSystem().getNumParticles();
//     positions.resize(numParticles);

//     // TODO: Implement this
//     // Call rust function and pass 'dataId', 'positions', 'numParticles'
// }

// void EmuUpdateStateDataKernel::setPositions(ContextImpl& context, const std::vector<Vec3>& positions) {
// 	int dataId = getDataId(context);
//     int numParticles = context.getSystem().getNumParticles();
    
//     // TODO: Implement this
//     // Call rust function and pass 'dataId', 'positions', 'numParticles'
// }

// void EmuUpdateStateDataKernel::getVelocities(ContextImpl& context, std::vector<Vec3>& velocities) {
// 	int dataId = getDataId(context);
//     int numParticles = context.getSystem().getNumParticles();
//     velocities.resize(numParticles);

//     // TODO: Implement this
//     // Call rust function and pass 'dataId', 'numParticles', 'velocities'
// }

// void EmuUpdateStateDataKernel::setVelocities(ContextImpl& context, const std::vector<Vec3>& velocities) {
// 	int dataId = getDataId(context);
//     int numParticles = context.getSystem().getNumParticles();

//     // TODO: Implement this
//     // Call rust function and pass 'dataId', 'numParticles', 'velocities'
// }

// void EmuUpdateStateDataKernel::getForces(ContextImpl& context, std::vector<Vec3>& forces) {
//     int dataId = getDataId(context);
//     int numParticles = context.getSystem().getNumParticles();
//     forces.resize(numParticles);

//     // TODO: Implement this
//     // Call rust function and pass 'dataId', 'numParticles', 'forces'
// }

// void EmuUpdateStateDataKernel::getEnergyParameterDerivatives(ContextImpl& context, map<string, double>& derivs) {
// 	int dataId = getDataId(context);

//     // TODO: Implement this
//     // Call rust function and pass 'dataId', 'derivs'
// }

// void EmuUpdateStateDataKernel::getPeriodicBoxVectors(ContextImpl& context, Vec3& a, Vec3& b, Vec3& c) const {
//     Vec3* vectors = extractBoxVectors(context);
//     a = vectors[0];
//     b = vectors[1];
//     c = vectors[2];
// }

// void EmuUpdateStateDataKernel::setPeriodicBoxVectors(ContextImpl& context, const Vec3& a, const Vec3& b, const Vec3& c) {
//     Vec3& box = extractBoxSize(context);
//     box[0] = a[0];
//     box[1] = b[1];
//     box[2] = c[2];
//     Vec3* vectors = extractBoxVectors(context);
//     vectors[0] = a;
//     vectors[1] = b;
//     vectors[2] = c;
// }

// void EmuUpdateStateDataKernel::createCheckpoint(ContextImpl& context, ostream& stream) {
//     int version = 3;
//     stream.write((char*) &version, sizeof(int));
//     stream.write((char*) &data.time, sizeof(data.time));
//     vector<Vec3>& posData = extractPositions(context);
//     stream.write((char*) &posData[0], sizeof(Vec3)*posData.size());
//     vector<Vec3>& velData = extractVelocities(context);
//     stream.write((char*) &velData[0], sizeof(Vec3)*velData.size());
//     Vec3* vectors = extractBoxVectors(context);
//     stream.write((char*) vectors, 3*sizeof(Vec3));
//     auto& allNoseHooverPositions = extractNoseHooverPositions(context);
//     auto& allNoseHooverVelocities = extractNoseHooverVelocities(context);
//     size_t numChains = allNoseHooverPositions.size();
//     assert(numChains == allNoseHooverVelocities.size());
//     stream.write((char*) &numChains, sizeof(size_t));
//     for (size_t i=0; i<numChains; i++){
//         auto & noseHooverPositions = allNoseHooverPositions.at(i);
//         auto & noseHooverVelocities = allNoseHooverVelocities.at(i);
//         size_t numBeads = noseHooverPositions.size();
//         assert(numBeads == noseHooverVelocities.size());
//         stream.write((char*) &numBeads, sizeof(size_t));
//         stream.write((char*) noseHooverPositions.data(), sizeof(double)*numBeads);
//         stream.write((char*) noseHooverVelocities.data(), sizeof(double)*numBeads);
//     }
//     SimTKOpenMMUtilities::createCheckpoint(stream);
// }

// void EmuUpdateStateDataKernel::loadCheckpoint(ContextImpl& context, istream& stream) {
//     int version;
//     stream.read((char*) &version, sizeof(int));
//     if (version != 3)
//         throw OpenMMException("Checkpoint was created with a different version of OpenMM");
//     stream.read((char*) &data.time, sizeof(data.time));
//     vector<Vec3>& posData = extractPositions(context);
//     stream.read((char*) &posData[0], sizeof(Vec3)*posData.size());
//     vector<Vec3>& velData = extractVelocities(context);
//     stream.read((char*) &velData[0], sizeof(Vec3)*velData.size());
//     Vec3* vectors = extractBoxVectors(context);
//     stream.read((char*) vectors, 3*sizeof(Vec3));
//     size_t numChains, numBeads;
//     auto& allNoseHooverPositions = extractNoseHooverPositions(context);
//     auto& allNoseHooverVelocities = extractNoseHooverVelocities(context);
//     stream.read((char*) &numChains, sizeof(size_t));
//     allNoseHooverPositions.clear();
//     allNoseHooverVelocities.clear();
//     for (size_t i=0; i<numChains; i++){
//         stream.read((char*) &numBeads, sizeof(size_t));
//         std::vector<double> noseHooverPositions(numBeads);
//         std::vector<double> noseHooverVelocities(numBeads);
//         stream.read((char*) &noseHooverPositions[0], sizeof(double)*numBeads);
//         stream.read((char*) &noseHooverVelocities[0], sizeof(double)*numBeads);
//         allNoseHooverPositions.push_back(noseHooverPositions);
//         allNoseHooverVelocities.push_back(noseHooverVelocities);
//     }
//     SimTKOpenMMUtilities::loadCheckpoint(stream);
// }
