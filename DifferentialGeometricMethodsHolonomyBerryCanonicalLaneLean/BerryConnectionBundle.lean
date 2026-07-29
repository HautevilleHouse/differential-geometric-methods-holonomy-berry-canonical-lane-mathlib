import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure BerryConnectionBundle where
  baseManifold : Type u
  fiber : Type v
  structureGroup : Type w
  principalConnectionForm : Prop
  berryCurvatureTwoForm : Prop
  metricCompatible : Prop
  adiabaticParameter : Prop
  principalConnectionFormDefined : principalConnectionForm
  berryCurvatureTwoFormDefined : berryCurvatureTwoForm
  metricCompatibleTerm : metricCompatible
  adiabaticParameterTerm : adiabaticParameter

structure BerryConnectionBundleEvidence (B : BerryConnectionBundle) where
  principalConnectionFormClosed : B.principalConnectionForm
  berryCurvatureTwoFormClosed : B.berryCurvatureTwoForm
  metricCompatibleClosed : B.metricCompatible
  adiabaticParameterClosed : B.adiabaticParameter

def BerryConnectionBundleClosed (B : BerryConnectionBundle) : Prop :=
  B.principalConnectionForm ∧ B.berryCurvatureTwoForm ∧ B.metricCompatible ∧ B.adiabaticParameter

theorem berry_connection_bundle_closed_from_evidence (B : BerryConnectionBundle) (E : BerryConnectionBundleEvidence B) :
    BerryConnectionBundleClosed B := by
  exact And.intro E.principalConnectionFormClosed
    (And.intro E.berryCurvatureTwoFormClosed
      (And.intro E.metricCompatibleClosed E.adiabaticParameterClosed))

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
