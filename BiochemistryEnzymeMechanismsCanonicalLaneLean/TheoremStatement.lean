import BiochemistryEnzymeMechanismsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

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
  sourceKey := "biochemistry-enzyme-mechanisms-canonical-lane",
  theoremName := "biochemistry-enzyme-mechanisms-canonical-lane",
  theoremObject := "Enzyme Mechanisms",
  classicalBoundary := "classical boundary carried by formalization certificate",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse