import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

def ConstrainedHolonomyBerryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_holonomy_berry_endgame (A : AdmissibleClass) :
    ConstrainedHolonomyBerryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
