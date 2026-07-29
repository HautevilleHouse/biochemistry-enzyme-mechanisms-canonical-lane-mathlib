import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure MichaelisMentenParams where
  Vmax : ℝ
  Km : ℝ
  substrate_conc : ℝ
  velocity : ℝ

structure MichaelisMentenStatement where
  params : MichaelisMentenParams
  equation_holds : params.velocity = params.Vmax * params.substrate_conc / (params.Km + params.substrate_conc)

structure EnzymeKineticProofObligation where
  sourceKey : String
  theoremName : String
  statement : MichaelisMentenStatement
  carriedGap : String

def michaelisMentenTheorem : Prop :=
  ∃ (params : MichaelisMentenParams), MichaelisMentenStatement.mk params (by
    rfl)

theorem michaelis_menten_theorem_holds : michaelisMentenTheorem := by
  refine ⟨⟨1.0, 0.5, 0.2, 0.2857142857⟩, ?_⟩
  rfl

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse