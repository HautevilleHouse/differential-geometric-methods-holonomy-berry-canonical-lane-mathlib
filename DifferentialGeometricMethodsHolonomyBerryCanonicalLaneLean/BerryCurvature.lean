import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure BerryCurvaturePackage (B : ConnectionBundle M) where
  parameterSpace : Type u
  eigenstates : Type v
  berryConnection : B.connectionForm
  berryCurvature : Type w
  chernClass : Prop
  adiabaticTheorem : Prop

structure BerryCurvatureEvidence (C : BerryCurvaturePackage B) where
  berryConnectionClosed : C.berryConnection
  berryCurvatureDefined : C.berryCurvature
  chernClassClosed : C.chernClass
  adiabaticTheoremClosed : C.adiabaticTheorem

def BerryCurvatureClosed (C : BerryCurvaturePackage B) : Prop :=
  C.berryCurvature ∧ C.chernClass ∧ C.adiabaticTheorem

theorem berry_curvature_closed_from_evidence
    (C : BerryCurvaturePackage B) (E : BerryCurvatureEvidence C) :
    BerryCurvatureClosed C := by
  exact And.intro E.berryCurvatureDefined
    (And.intro E.chernClassClosed E.adiabaticTheoremClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse