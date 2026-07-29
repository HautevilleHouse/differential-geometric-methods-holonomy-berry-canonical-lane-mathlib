import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean",
  theoremName := "DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean",
  theoremObject := "Holonomy and Berry phase in differential geometry",
  classicalBoundary := "Holonomy group classification and Berry curvature",
  manifoldConstrainedStatement := "Admissible-class holonomy bridge internalized through gauge connection, curvature invariants, and adiabatic transport",
  certificateLane := "manifold_constrained",
  carriedRemainder := "Classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DifferentialGeometricMethodsHolonomyBerryCanonicalLaneLean
end HautevilleHouse