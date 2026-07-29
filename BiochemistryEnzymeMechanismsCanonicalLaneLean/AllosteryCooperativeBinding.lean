import HautevilleHouse.BiochemistryEnzymeMechanismsCanonicalLaneLean.AdmittedObject

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure AllosteryCooperativeBindingPackage where
  allostericRegulation : Prop
  cooperativeBinding : Prop
  hillCoefficient : Prop
  mnwModel : Prop
  concertedModel : Prop

structure AllosteryCooperativeBindingEvidence (A : AllosteryCooperativeBindingPackage) where
  allostericRegulationClosed : A.allostericRegulation
  cooperativeBindingClosed : A.cooperativeBinding
  hillCoefficientClosed : A.hillCoefficient
  mnwModelClosed : A.mnwModel
  concertedModelClosed : A.concertedModel

def AllosteryCooperativeBindingClosed (A : AllosteryCooperativeBindingPackage) : Prop :=
  A.allostericRegulation ∧ A.cooperativeBinding ∧ A.hillCoefficient ∧ A.mnwModel ∧ A.concertedModel

theorem allostery_cooperative_binding_closed_from_evidence (A : AllosteryCooperativeBindingPackage) (E : AllosteryCooperativeBindingEvidence A) : AllosteryCooperativeBindingClosed A := by
  exact And.intro E.allostericRegulationClosed
    (And.intro E.cooperativeBindingClosed
      (And.intro E.hillCoefficientClosed
        (And.intro E.mnwModelClosed E.concertedModelClosed)))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse