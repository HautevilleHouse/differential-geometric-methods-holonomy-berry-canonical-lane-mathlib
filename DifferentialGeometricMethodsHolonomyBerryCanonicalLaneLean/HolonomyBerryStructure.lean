import canonicalLaneMathlib.AdmissibleClass

/-!
# Holonomy and Berry Phase Structure
This module defines the core holonomy and Berry-phase geometric objects.
-/

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure PrincipalBundle (M : Type u) (G : Type v) where
  totalSpace : Type w
  projection : totalSpace → M
  structureGroup : G
  localTrivializations : Prop
  connection : Type
  curvatureForm : Type
  holonomyGroup : Type
  holonomyClosed : Prop

structure BerryConnection (M : Type u) where
  hilbertBundle : Type
  parameterSpace : M
  adiabaticConnection : Type
  berryCurvature : Type
  berryPhase : M → ℝ
  parallelTransport : {x y : M} → (x = y) → (berryCurvature → Prop)
  berryPhaseHolonomy : Prop
  connectionClosed : Prop

def HolonomyBerryWitnessClosed (O : HolonomyBerryAdmittedObject) : Prop :=
  O.berryPhaseHolonomy

structure HolonomyBerryAdmittedObject where
  base : Type
  parameterSpace : Type
  bundle : PrincipalBundle base (Type)
  berry : BerryConnection base
  berryPhaseHolonomy : Prop
  conclusion : berryPhaseHolonomy

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse