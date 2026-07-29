import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.BerryConnectionBundle

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure ParallelTransportHolonomyPackage {B : BerryConnectionBundle} where
  parallelTransportOperator : Prop
  holonomyGroup : Type u
  monodromyRepresentation : Prop
  curvatureHolonomyRelation : Prop
  parallelTransportOperatorDefined : parallelTransportOperator
  holonomyGroupDefined : Nonempty holonomyGroup
  monodromyRepresentationClosed : monodromyRepresentation
  curvatureHolonomyRelationClosed : curvatureHolonomyRelation

structure ParallelTransportHolonomyEvidence {B : BerryConnectionBundle} (P : ParallelTransportHolonomyPackage B) where
  parallelTransportOperatorClosed : P.parallelTransportOperator
  monodromyRepresentationClosed : P.monodromyRepresentation
  curvatureHolonomyRelationClosed : P.curvatureHolonomyRelation

def ParallelTransportHolonomyClosed {B : BerryConnectionBundle} (P : ParallelTransportHolonomyPackage B) : Prop :=
  P.parallelTransportOperator ∧ P.monodromyRepresentation ∧ P.curvatureHolonomyRelation

theorem parallel_transport_holonomy_closed_from_evidence
    {B : BerryConnectionBundle} (P : ParallelTransportHolonomyPackage B)
    (E : ParallelTransportHolonomyEvidence P) : ParallelTransportHolonomyClosed P := by
  exact And.intro E.parallelTransportOperatorClosed
    (And.intro E.monodromyRepresentationClosed E.curvatureHolonomyRelationClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
