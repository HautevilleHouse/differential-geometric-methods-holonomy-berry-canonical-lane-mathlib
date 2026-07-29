import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure BerryCurvatureIndexPackage {P : ConnectionHolonomyPackage} where
  berryCurvature : Type
  firstChernClass : Type
  indexFormula : Prop
  adiabaticLimit : Prop
  curvatureInvariant : Prop
  indexFormulaClosed : indexFormula
  adiabaticLimitClosed : adiabaticLimit
  curvatureInvariantClosed : curvatureInvariant

structure BerryCurvatureIndexEvidence {P : ConnectionHolonomyPackage}
    (B : BerryCurvatureIndexPackage P) where
  indexFormulaClosed : B.indexFormula
  adiabaticLimitClosed : B.adiabaticLimit
  curvatureInvariantClosed : B.curvatureInvariant

def BerryCurvatureIndexClosed {P : ConnectionHolonomyPackage}
    (B : BerryCurvatureIndexPackage P) : Prop :=
  B.indexFormula ∧ B.adiabaticLimit ∧ B.curvatureInvariant

theorem berry_curvature_index_closed_from_evidence
    {P : ConnectionHolonomyPackage} (B : BerryCurvatureIndexPackage P)
    (E : BerryCurvatureIndexEvidence B) : BerryCurvatureIndexClosed B := by
  exact And.intro E.indexFormulaClosed
    (And.intro E.adiabaticLimitClosed E.curvatureInvariantClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
