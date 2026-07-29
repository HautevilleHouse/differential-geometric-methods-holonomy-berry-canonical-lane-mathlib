import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.BerryConnectionBundle

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure HolonomyBerryPhase {B : BerryConnectionBundle} where
  parameterSpace : Type u
  loopSpace : Type v
  holonomyMap : parameterSpace → loopSpace → Type w
  berryPhase : parameterSpace → Type x
  adiabaticTransport : Prop
  geometricPhaseDefined : Prop
  holonomyComputed : Prop
  adiabaticTransportTerm : adiabaticTransport
  geometricPhaseDefinedTerm : geometricPhaseDefined
  holonomyComputedTerm : holonomyComputed

structure HolonomyBerryPhaseEvidence {B : BerryConnectionBundle}
    (H : HolonomyBerryPhase B) where
  adiabaticTransportClosed : H.adiabaticTransport
  geometricPhaseDefinedClosed : H.geometricPhaseDefined
  holonomyComputedClosed : H.holonomyComputed

def HolonomyBerryPhaseClosed {B : BerryConnectionBundle}
    (H : HolonomyBerryPhase B) : Prop :=
  H.adiabaticTransport ∧ H.geometricPhaseDefined ∧ H.holonomyComputed

theorem holonomy_berry_phase_closed_from_evidence
    {B : BerryConnectionBundle} (H : HolonomyBerryPhase B)
    (E : HolonomyBerryPhaseEvidence H) : HolonomyBerryPhaseClosed H := by
  exact And.intro E.adiabaticTransportClosed
    (And.intro E.geometricPhaseDefinedClosed E.holonomyComputedClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
