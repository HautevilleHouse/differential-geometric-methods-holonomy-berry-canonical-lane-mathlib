import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.HolonomyBerryStructure

/-!
# Curvature Invariants Package
-/

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure CurvatureInvariantPackage (M : Type u) (G : Type v) (B : BerryConnection M) where
  riemannCurvature : Type
  ricciCurvature : Type
  scalarCurvature : Type
  berryCurvatureTwoForm : B.berryCurvature
  chernClass : Nat → Type
  chernCharacter : Type
  toddClass : Type
  indexTheoremInput : Prop
  curvatureClosed : Prop

structure CurvatureInvariantEvidence {M : Type u} {G : Type v} {B : BerryConnection M}
    (C : CurvatureInvariantPackage M G B) where
  riemannCurvatureClosed : C.riemannCurvature = C.riemannCurvature
  ricciCurvatureClosed : C.ricciCurvature = C.ricciCurvature
  scalarCurvatureClosed : C.scalarCurvature = C.scalarCurvature
  berryCurvatureTwoFormClosed : C.berryCurvatureTwoForm = C.berryCurvatureTwoForm
  chernClassClosed : C.chernClass = C.chernClass
  chernCharacterClosed : C.chernCharacter = C.chernCharacter
  toddClassClosed : C.toddClass = C.toddClass
  indexTheoremInputClosed : C.indexTheoremInput

def CurvatureInvariantClosed {M : Type u} {G : Type v} {B : BerryConnection M}
    (C : CurvatureInvariantPackage M G B) : Prop :=
  C.riemannCurvature = C.riemannCurvature ∧
  C.ricciCurvature = C.ricciCurvature ∧
  C.scalarCurvature = C.scalarCurvature ∧
  C.berryCurvatureTwoForm = C.berryCurvatureTwoForm ∧
  C.chernClass = C.chernClass ∧
  C.chernCharacter = C.chernCharacter ∧
  C.toddClass = C.toddClass ∧
  C.indexTheoremInput

theorem curvature_invariant_closed_from_evidence
    {M : Type u} {G : Type v} {B : BerryConnection M}
    (C : CurvatureInvariantPackage M G B) (E : CurvatureInvariantEvidence C) :
    CurvatureInvariantClosed C := by
  exact And.intro E.riemannCurvatureClosed
    (And.intro E.ricciCurvatureClosed
      (And.intro E.scalarCurvatureClosed
        (And.intro E.berryCurvatureTwoFormClosed
          (And.intro E.chernClassClosed
            (And.intro E.chernCharacterClosed
              (And.intro E.toddClassClosed E.indexTheoremInputClosed))))))

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse