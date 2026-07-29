import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  forwardRateConstant : ℝ
  reverseRateConstant : ℝ
  equilibriumConstant : ℝ
  concentrations : ℝ × ℝ × ℝ
  reactionQuotient : ℝ
  leChatelierPrinciple : Prop

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  forwardRateConstantClosed : E.forwardRateConstant = 0.1
  reverseRateConstantClosed : E.reverseRateConstant = 0.01
  equilibriumConstantClosed : E.equilibriumConstant = 10.0
  concentrationsClosed : E.concentrations = (0.5, 0.2, 0.3)
  reactionQuotientClosed : E.reactionQuotient = 5.0
  leChatelierPrincipleClosed : E.leChatelierPrinciple

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.forwardRateConstant = 0.1 ∧ E.reverseRateConstant = 0.01 ∧
  E.equilibriumConstant = 10.0 ∧ E.concentrations = (0.5, 0.2, 0.3) ∧
  E.reactionQuotient = 5.0 ∧ E.leChatelierPrinciple

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage)
    (Ev : ChemicalEquilibriumEvidence E) : ChemicalEquilibriumClosed E :=
  by
    exact And.intro Ev.forwardRateConstantClosed
      (And.intro Ev.reverseRateConstantClosed
        (And.intro Ev.equilibriumConstantClosed
          (And.intro Ev.concentrationsClosed
            (And.intro Ev.reactionQuotientClosed Ev.leChatelierPrincipleClosed))))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse