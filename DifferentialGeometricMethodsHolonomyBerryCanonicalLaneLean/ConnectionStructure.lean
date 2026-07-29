import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure ConnectionStructure where
  totalSpace : Type u
  baseSpace : Type v
  fiber : Type w
  projectionMap : totalSpace → baseSpace
  connectionOneForm : totalSpace → Type t
  curvatureTwoForm : totalSpace → Type t
  holonomyGroup : baseSpace → Type u
  parallelTransport : Path baseSpace → totalSpace → totalSpace
  connectionFlat : Prop
  curvatureVanishes : Prop
  holonomyDiscrete : Prop
  berryPhaseDefined : Prop

structure ConnectionEvidence (C : ConnectionStructure) where
  connectionFlatClosed : C.connectionFlat
  curvatureVanishesClosed : C.curvatureVanishes
  holonomyDiscreteClosed : C.holonomyDiscrete
  berryPhaseDefinedClosed : C.berryPhaseDefined

def ConnectionClosed (C : ConnectionStructure) : Prop :=
  C.connectionFlat ∧ C.curvatureVanishes ∧ C.holonomyDiscrete ∧ C.berryPhaseDefined

theorem connection_closed_from_evidence (C : ConnectionStructure) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.connectionFlatClosed
    (And.intro E.curvatureVanishesClosed
      (And.intro E.holonomyDiscreteClosed E.berryPhaseDefinedClosed))

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse