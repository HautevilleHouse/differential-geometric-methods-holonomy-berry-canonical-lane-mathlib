import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.CurvatureInvariant
import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.ParallelTransportHolonomy

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure IndexTheoremApplicationPackage {B : BerryConnectionBundle}
    {C : CurvatureInvariantPackage B} {P : ParallelTransportHolonomyPackage B} where
  atiyahSingerIndexTheorem : Prop
  geometricPhaseIndex : Prop
  indexComputedFromChernClass : Prop
  holonomyContribution : Prop
  atiyahSingerIndexTheoremClosed : atiyahSingerIndexTheorem
  geometricPhaseIndexClosed : geometricPhaseIndex
  indexComputedFromChernClassClosed : indexComputedFromChernClass
  holonomyContributionClosed : holonomyContribution

structure IndexTheoremApplicationEvidence {B : BerryConnectionBundle}
    {C : CurvatureInvariantPackage B} {P : ParallelTransportHolonomyPackage B}
    (I : IndexTheoremApplicationPackage B C P) where
  atiyahSingerIndexTheoremClosed : I.atiyahSingerIndexTheorem
  geometricPhaseIndexClosed : I.geometricPhaseIndex
  indexComputedFromChernClassClosed : I.indexComputedFromChernClass
  holonomyContributionClosed : I.holonomyContribution

def IndexTheoremApplicationClosed {B : BerryConnectionBundle}
    {C : CurvatureInvariantPackage B} {P : ParallelTransportHolonomyPackage B}
    (I : IndexTheoremApplicationPackage B C P) : Prop :=
  I.atiyahSingerIndexTheorem ∧ I.geometricPhaseIndex ∧ I.indexComputedFromChernClass ∧ I.holonomyContribution

theorem index_theorem_application_closed_from_evidence
    {B : BerryConnectionBundle} {C : CurvatureInvariantPackage B} {P : ParallelTransportHolonomyPackage B}
    (I : IndexTheoremApplicationPackage B C P) (E : IndexTheoremApplicationEvidence I) :
    IndexTheoremApplicationClosed I := by
  exact And.intro E.atiyahSingerIndexTheoremClosed
    (And.intro E.geometricPhaseIndexClosed
      (And.intro E.indexComputedFromChernClassClosed E.holonomyContributionClosed))

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
