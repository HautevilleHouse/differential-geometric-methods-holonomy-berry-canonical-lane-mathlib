import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.BerryConnectionBundle

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure BerryCurvatureInvariants {B : BerryConnectionBundle} where
  chernClass : Prop
  chernCharacter : Prop
  toddClass : Prop
  aHatClass : Prop
  chernClassDefined : chernClass
  chernCharacterDefined : chernCharacter
  toddClassDefined : toddClass
  aHatClassDefined : aHatClass

structure BerryCurvatureInvariantsEvidence {B : BerryConnectionBundle}
    (I : BerryCurvatureInvariants B) where
  chernClassClosed : I.chernClass
  chernCharacterClosed : I.chernCharacter
  toddClassClosed : I.toddClass
  aHatClassClosed : I.aHatClass

def BerryCurvatureInvariantsClosed {B : BerryConnectionBundle}
    (I : BerryCurvatureInvariants B) : Prop :=
  I.chernClass ∧ I.chernCharacter ∧ I.toddClass ∧ I.aHatClass

theorem berry_curvature_invariants_closed_from_evidence
    {B : BerryConnectionBundle} (I : BerryCurvatureInvariants B)
    (E : BerryCurvatureInvariantsEvidence I) : BerryCurvatureInvariantsClosed I := by
  exact And.intro E.chernClassClosed
    (And.intro E.chernCharacterClosed
      (And.intro E.toddClassClosed E.aHatClassClosed))

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
