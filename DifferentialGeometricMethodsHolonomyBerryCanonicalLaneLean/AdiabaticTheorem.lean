import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure AdiabaticTheoremPackage where
  hamiltonianFamily : Type u
  gapCondition : Prop
  adiabaticEvolution : Prop
  berryPhase : Prop
  geometricPhase : Prop

structure AdiabaticTheoremEvidence (A : AdiabaticTheoremPackage) where
  gapConditionClosed : A.gapCondition
  adiabaticEvolutionClosed : A.adiabaticEvolution
  berryPhaseClosed : A.berryPhase
  geometricPhaseClosed : A.geometricPhase

def AdiabaticTheoremClosed (A : AdiabaticTheoremPackage) : Prop :=
  A.gapCondition ∧ A.adiabaticEvolution ∧ A.berryPhase ∧ A.geometricPhase

theorem adiabatic_theorem_closed_from_evidence
    (A : AdiabaticTheoremPackage) (E : AdiabaticTheoremEvidence A) :
    AdiabaticTheoremClosed A := by
  exact And.intro E.gapConditionClosed
    (And.intro E.adiabaticEvolutionClosed
      (And.intro E.berryPhaseClosed E.geometricPhaseClosed))

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse