import HautevilleHouse.BiochemistryEnzymeMechanismsCanonicalLaneLean.AdmittedObject

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure EnzymeInhibitionPackage where
  competitiveInhibition : Prop
  noncompetitiveInhibition : Prop
  uncompetitiveInhibition : Prop
  mixedInhibition : Prop
  irreversibleInhibition : Prop

structure EnzymeInhibitionEvidence (I : EnzymeInhibitionPackage) where
  competitiveInhibitionClosed : I.competitiveInhibition
  noncompetitiveInhibitionClosed : I.noncompetitiveInhibition
  uncompetitiveInhibitionClosed : I.uncompetitiveInhibition
  mixedInhibitionClosed : I.mixedInhibition
  irreversibleInhibitionClosed : I.irreversibleInhibition

def EnzymeInhibitionClosed (I : EnzymeInhibitionPackage) : Prop :=
  I.competitiveInhibition ∧ I.noncompetitiveInhibition ∧ I.uncompetitiveInhibition ∧
  I.mixedInhibition ∧ I.irreversibleInhibition

theorem enzyme_inhibition_closed_from_evidence (I : EnzymeInhibitionPackage) (E : EnzymeInhibitionEvidence I) : EnzymeInhibitionClosed I := by
  exact And.intro E.competitiveInhibitionClosed
    (And.intro E.noncompetitiveInhibitionClosed
      (And.intro E.uncompetitiveInhibitionClosed
        (And.intro E.mixedInhibitionClosed E.irreversibleInhibitionClosed)))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse