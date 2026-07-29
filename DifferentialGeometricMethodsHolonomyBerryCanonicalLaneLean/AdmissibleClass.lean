import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HolonomyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure AdmittedObject where
  baseManifold : Type
  principalBundle : Type
  connection : Type
  curvature : Type
  holonomyComputed : Prop
  berryPhaseComputed : Prop
  conclusion : holonomyComputed ∧ berryPhaseComputed

def HolonomyWitnessClosed (O : AdmittedObject) : Prop :=
  O.holonomyComputed ∧ O.berryPhaseComputed

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
