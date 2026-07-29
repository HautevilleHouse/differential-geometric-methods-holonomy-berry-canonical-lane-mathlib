import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.BerryConnectionBundle

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure CurvatureInvariantPackage {B : BerryConnectionBundle} where
  firstChernClass : Type u
  berryCurvatureTwoForm : B.berryCurvatureTwoForm
  integralChernClass : Prop
  curvatureInvariantExtracted : Prop
  firstChernClassDefined : Nonempty firstChernClass
  integralChernClassClosed : integralChernClass
  curvatureInvariantExtractedClosed : curvatureInvariantExtracted

structure CurvatureInvariantEvidence {B : BerryConnectionBundle} (C : CurvatureInvariantPackage B) where
  integralChernClassClosed : C.integralChernClass
  curvatureInvariantExtractedClosed : C.curvatureInvariantExtracted

def CurvatureInvariantClosed {B : BerryConnectionBundle} (C : CurvatureInvariantPackage B) : Prop :=
  C.integralChernClass ∧ C.curvatureInvariantExtracted

theorem curvature_invariant_closed_from_evidence
    {B : BerryConnectionBundle} (C : CurvatureInvariantPackage B)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.integralChernClassClosed E.curvatureInvariantExtractedClosed

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
