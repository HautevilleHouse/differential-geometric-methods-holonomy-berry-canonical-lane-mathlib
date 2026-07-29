import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.CurvatureInvariants

/-!
# Index Theorem Package
-/

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure IndexTheoremPackage {M : Type u} {G : Type v} {B : BerryConnection M}
    (C : CurvatureInvariantPackage M G B) where
  diracOperator : Type
  indexFormula : Prop
  analyticIndex : ℤ
  topologicalIndex : ℤ
  indexEqualsTopological : indexFormula → (analyticIndex = topologicalIndex)
  indexClosed : Prop

structure IndexTheoremEvidence {M : Type u} {G : Type v} {B : BerryConnection M}
    {C : CurvatureInvariantPackage M G B} (I : IndexTheoremPackage C) where
  indexFormulaClosed : I.indexFormula
  indexEqualsTopologicalClosed : I.indexEqualsTopological I.indexFormulaClosed
  indexClosedProof : I.indexClosed

def IndexTheoremClosed {M : Type u} {G : Type v} {B : BerryConnection M}
    {C : CurvatureInvariantPackage M G B} (I : IndexTheoremPackage C) : Prop :=
  I.indexFormula ∧ I.indexClosed

theorem index_theorem_closed_from_evidence
    {M : Type u} {G : Type v} {B : BerryConnection M}
    {C : CurvatureInvariantPackage M G B} (I : IndexTheoremPackage C)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexFormulaClosed E.indexClosedProof

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse