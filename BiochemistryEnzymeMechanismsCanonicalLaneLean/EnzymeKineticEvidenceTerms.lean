import canonicalLaneMathlib.AdmissibleClass
import BiochemistryEnzymeMechanismsCanonicalLaneLean.SteadyState

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure CatalyticRateEvidence where
  kcat_measured : ℝ
  kcat_positive : kcat_measured > 0
  kcat_finite : kcat_measured < ∞

structure BindingConstantEvidence where
  Km_measured : ℝ
  Km_positive : Km_measured > 0
  Km_finite : Km_measured < ∞

structure EnzymeKineticEvidenceTerms {P : SteadyStatePackage} (E : SteadyStateEvidence P) where
  catalyticRate : CatalyticRateEvidence
  bindingConstant : BindingConstantEvidence
  steadyStateEvidence : E

def EnzymeKineticEvidenceTermsClosed {P : SteadyStatePackage} {E : SteadyStateEvidence P}
    (T : EnzymeKineticEvidenceTerms E) : Prop :=
  T.catalyticRate.kcat_positive ∧ T.bindingConstant.Km_positive ∧
  SteadyStateClosed P

theorem enzyme_kinetic_evidence_terms_closed {P : SteadyStatePackage} {E : SteadyStateEvidence P}
    (T : EnzymeKineticEvidenceTerms E) : EnzymeKineticEvidenceTermsClosed T := by
  exact And.intro T.catalyticRate.kcat_positive
    (And.intro T.bindingConstant.Km_positive
      (steady_state_closed_from_evidence P T.steadyStateEvidence))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse