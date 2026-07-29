import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure ChernWeilTheoryPackage (B : ConnectionBundle M) where
  chernWeilMap : Type u
  chernClasses : Prop
  eulerClass : Prop
  chernCharacter : Prop
  indexTheorem : Prop

structure ChernWeilTheoryEvidence (C : ChernWeilTheoryPackage B) where
  chernWeilMapClosed : C.chernWeilMap
  chernClassesClosed : C.chernClasses
  eulerClassClosed : C.eulerClass
  chernCharacterClosed : C.chernCharacter
  indexTheoremClosed : C.indexTheorem

def ChernWeilTheoryClosed (C : ChernWeilTheoryPackage B) : Prop :=
  C.chernClasses ∧ C.eulerClass ∧ C.indexTheorem

theorem chern_weil_theory_closed_from_evidence
    (C : ChernWeilTheoryPackage B) (E : ChernWeilTheoryEvidence C) :
    ChernWeilTheoryClosed C := by
  exact And.intro E.chernClassesClosed
    (And.intro E.eulerClassClosed E.indexTheoremClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse