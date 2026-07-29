import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergyChange : Type u
  equilibriumConstant : Type v
  enthalpyChange : Prop
  entropyChange : Prop
  reactionSpontaneity : Prop
  activationEnergyBarrier : Prop

structure ThermodynamicEquilibriumEvidence (P : ThermodynamicEquilibriumPackage) where
  enthalpyChangeClosed : P.enthalpyChange
  entropyChangeClosed : P.entropyChange
  reactionSpontaneityClosed : P.reactionSpontaneity
  activationEnergyBarrierClosed : P.activationEnergyBarrier

def ThermodynamicEquilibriumClosed (P : ThermodynamicEquilibriumPackage) : Prop :=
  P.enthalpyChange ∧ P.entropyChange ∧ P.reactionSpontaneity ∧ P.activationEnergyBarrier

theorem thermodynamic_equilibrium_closed_from_evidence (P : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence P) : ThermodynamicEquilibriumClosed P := by
  exact And.intro E.enthalpyChangeClosed
    (And.intro E.entropyChangeClosed
      (And.intro E.reactionSpontaneityClosed E.activationEnergyBarrierClosed))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse