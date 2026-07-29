import canonicalLaneMathlib.AdmissibleClass
import BiochemistryEnzymeMechanismsCanonicalLaneLean.EnzymeKineticEvidenceTerms
import BiochemistryEnzymeMechanismsCanonicalLaneLean.EnzymeStatement

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure EnzymeKineticRoute (A : AdmissibleClass) where
  evidence : EnzymeKineticEvidenceTerms (by
    -- placeholder: construct SteadyStateEvidence from A
    exact A.steadyStateEvidence)
  closureFromRoute : EnzymeKineticProofObligation

theorem enzyme_kinetic_route_yields_closure (A : AdmissibleClass) (R : EnzymeKineticRoute A) :
    MichaelisMentenStatement := by
  exact R.closureFromRoute.statement

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse