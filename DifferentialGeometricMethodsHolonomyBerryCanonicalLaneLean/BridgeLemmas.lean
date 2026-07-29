import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HolonomyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse
