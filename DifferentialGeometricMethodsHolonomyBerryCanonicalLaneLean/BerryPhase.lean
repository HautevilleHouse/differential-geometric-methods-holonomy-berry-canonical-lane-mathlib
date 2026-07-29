import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure BerryPhasePackage where
  parameterSpace : Type u
  adiabaticEvolution : Type v
  eigenstateBundle : Type w
  berryConnection : Type t
  berryCurvature : Type t
  holonomyIntegral : Prop
  geometricPhase : Prop
  quantizedCondition : Prop

structure BerryPhaseEvidence (B : BerryPhasePackage) where
  holonomyIntegralClosed : B.holonomyIntegral
  geometricPhaseClosed : B.geometricPhase
  quantizedConditionClosed : B.quantizedCondition

def BerryPhaseClosed (B : BerryPhasePackage) : Prop :=
  B.holonomyIntegral ∧ B.geometricPhase ∧ B.quantizedCondition

theorem berry_phase_closed_from_evidence (B : BerryPhasePackage) (E : BerryPhaseEvidence B) :
    BerryPhaseClosed B := by
  exact And.intro E.holonomyIntegralClosed
    (And.intro E.geometricPhaseClosed E.quantizedConditionClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse