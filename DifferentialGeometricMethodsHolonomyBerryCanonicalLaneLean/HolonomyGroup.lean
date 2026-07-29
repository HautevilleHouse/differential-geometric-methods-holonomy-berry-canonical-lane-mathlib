import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure HolonomyGroupPackage (B : ConnectionBundle M) where
  loopSpace : Type u
  parallelTransport : Prop
  holonomyGroup : Type v
  restrictedHolonomy : Prop
  ambarTheorem : Prop

structure HolonomyGroupEvidence (H : HolonomyGroupPackage B) where
  parallelTransportClosed : H.parallelTransport
  holonomyGroupDefined : H.holonomyGroup
  restrictedHolonomyClosed : H.restrictedHolonomy
  ambarTheoremClosed : H.ambarTheorem

def HolonomyGroupClosed (H : HolonomyGroupPackage B) : Prop :=
  H.holonomyGroup ∧ H.restrictedHolonomy ∧ H.ambarTheorem

theorem holonomy_group_closed_from_evidence
    (H : HolonomyGroupPackage B) (E : HolonomyGroupEvidence H) :
    HolonomyGroupClosed H := by
  exact And.intro E.holonomyGroupDefined
    (And.intro E.restrictedHolonomyClosed E.ambarTheoremClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse