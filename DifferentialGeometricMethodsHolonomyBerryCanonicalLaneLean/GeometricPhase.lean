import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure GeometricPhasePackage (B : ConnectionBundle M) where
  parameterCurve : Type u
  parallelTransportOperator : Prop
  holonomyMatrix : Prop
  phaseFactor : Prop
  topologicalInvariant : Prop

structure GeometricPhaseEvidence (G : GeometricPhasePackage B) where
  parallelTransportOperatorClosed : G.parallelTransportOperator
  holonomyMatrixClosed : G.holonomyMatrix
  phaseFactorClosed : G.phaseFactor
  topologicalInvariantClosed : G.topologicalInvariant

def GeometricPhaseClosed (G : GeometricPhasePackage B) : Prop :=
  G.holonomyMatrix ∧ G.phaseFactor ∧ G.topologicalInvariant

theorem geometric_phase_closed_from_evidence
    (G : GeometricPhasePackage B) (E : GeometricPhaseEvidence G) :
    GeometricPhaseClosed G := by
  exact And.intro E.holonomyMatrixClosed
    (And.intro E.phaseFactorClosed E.topologicalInvariantClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse