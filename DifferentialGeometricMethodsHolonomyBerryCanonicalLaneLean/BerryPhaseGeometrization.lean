import DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean.IndexTheoremPackage

/-!
# Berry Phase Geometrization Package
-/

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure BerryPhaseGeometrizationPackage {M : Type u} {G : Type v} {B : BerryConnection M}
    {C : CurvatureInvariantPackage M G B} {I : IndexTheoremPackage C} where
  adiabaticTheorem : Prop
  berryPhaseFormula : Prop
  geometricPhaseFactor : Prop
  holonomyRepresentation : Prop
  berryPhaseQuantization : Prop

def BerryPhaseGeometrizationClosed {M : Type u} {G : Type v} {B : BerryConnection M}
    {C : CurvatureInvariantPackage M G B} {I : IndexTheoremPackage C}
    (P : BerryPhaseGeometrizationPackage I) : Prop :=
  P.adiabaticTheorem ∧ P.berryPhaseFormula ∧ P.geometricPhaseFactor ∧
  P.holonomyRepresentation ∧ P.berryPhaseQuantization

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse