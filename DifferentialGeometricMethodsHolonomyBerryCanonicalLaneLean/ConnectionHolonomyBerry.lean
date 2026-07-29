import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure ConnectionHolonomyPackage where
  baseManifold : Type
  principalBundle : Type
  connectionForm : Type
  curvatureForm : Type
  parallelTransport : Type
  holonomyGroup : Type
  berryPhase : Type
  connectionSmooth : Prop
  curvatureTransformsCorrectly : Prop
  holonomyWellDefined : Prop
  berryPhaseWellDefined : Prop

structure ConnectionHolonomyEvidence (P : ConnectionHolonomyPackage) where
  connectionSmoothClosed : P.connectionSmooth
  curvatureTransformsCorrectlyClosed : P.curvatureTransformsCorrectly
  holonomyWellDefinedClosed : P.holonomyWellDefined
  berryPhaseWellDefinedClosed : P.berryPhaseWellDefined

def ConnectionHolonomyClosed (P : ConnectionHolonomyPackage) : Prop :=
  P.connectionSmooth ∧ P.curvatureTransformsCorrectly ∧
  P.holonomyWellDefined ∧ P.berryPhaseWellDefined

theorem connection_holonomy_closed_from_evidence
    (P : ConnectionHolonomyPackage) (E : ConnectionHolonomyEvidence P) :
    ConnectionHolonomyClosed P := by
  exact And.intro E.connectionSmoothClosed
    (And.intro E.curvatureTransformsCorrectlyClosed
      (And.intro E.holonomyWellDefinedClosed E.berryPhaseWellDefinedClosed))

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
