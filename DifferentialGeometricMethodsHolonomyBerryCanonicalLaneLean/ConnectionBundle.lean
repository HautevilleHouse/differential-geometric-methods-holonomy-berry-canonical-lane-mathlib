import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure ConnectionBundle (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  totalSpace : Type v
  base : M
  projection : totalSpace → M
  fiber : Type w
  structureGroup : Type
  transitionFunctions : Prop
  connectionForm : Prop
  curvatureTwoForm : Prop
  holonomyGroup : Type

structure ConnectionEvidence (B : ConnectionBundle M) where
  transitionFunctionsClosed : B.transitionFunctions
  connectionFormClosed : B.connectionForm
  curvatureTwoFormClosed : B.curvatureTwoForm

def ConnectionClosed (B : ConnectionBundle M) : Prop :=
  B.transitionFunctions ∧ B.connectionForm ∧ B.curvatureTwoForm

theorem connection_closed_from_evidence
    (B : ConnectionBundle M) (E : ConnectionEvidence B) :
    ConnectionClosed B := by
  exact And.intro E.transitionFunctionsClosed
    (And.intro E.connectionFormClosed E.curvatureTwoFormClosed)

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse