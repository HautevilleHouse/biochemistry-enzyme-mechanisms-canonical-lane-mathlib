import HautevilleHouse.BiochemistryEnzymeMechanismsCanonicalLaneLean.BridgeGate

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

def ConstrainedEnzymeClosure (A : EnzymeAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_enzyme_endgame (A : EnzymeAdmittedObject) : ConstrainedEnzymeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse