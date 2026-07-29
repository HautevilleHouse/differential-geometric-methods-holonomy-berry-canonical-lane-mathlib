import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure AdiabaticLimitPackage where
  hamiltonianFamily : Type u
  slowParameter : Type v
  instantaneousEigenstates : Type w
  adiabaticEvolutionOperator : Type t
  berryPhaseAccumulated : Prop
  holonomyExtracted : Prop
  adiabaticTheoremApplied : Prop
  geometricPhaseFactor : Prop

structure AdiabaticLimitEvidence (A : AdiabaticLimitPackage) where
  berryPhaseAccumulatedClosed : A.berryPhaseAccumulated
  holonomyExtractedClosed : A.holonomyExtracted
  adiabaticTheoremAppliedClosed : A.adiabaticTheoremApplied
  geometricPhaseFactorClosed : A.geometricPhaseFactor

def AdiabaticLimitClosed (A : AdiabaticLimitPackage) : Prop :=
  A.berryPhaseAccumulated ∧ A.holonomyExtracted ∧ A.adiabaticTheoremApplied ∧ A.geometricPhaseFactor

theorem adiabatic_limit_closed_from_evidence (A : AdiabaticLimitPackage) (E : AdiabaticLimitEvidence A) :
    AdiabaticLimitClosed A := by
  exact And.intro E.berryPhaseAccumulatedClosed
    (And.intro E.holonomyExtractedClosed
      (And.intro E.adiabaticTheoremAppliedClosed E.geometricPhaseFactorClosed))

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse