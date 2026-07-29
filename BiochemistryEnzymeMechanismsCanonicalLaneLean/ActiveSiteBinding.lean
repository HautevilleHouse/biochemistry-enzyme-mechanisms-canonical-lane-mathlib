import HautevilleHouse.BiochemistryEnzymeMechanismsCanonicalLaneLean.AdmittedObject

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure ActiveSiteBindingPackage where
  bindingAffinity : Prop
  specificity : Prop
  inducedFit : Prop
  lockAndKey : Prop
  conformationalChange : Prop

structure ActiveSiteBindingEvidence (B : ActiveSiteBindingPackage) where
  bindingAffinityClosed : B.bindingAffinity
  specificityClosed : B.specificity
  inducedFitClosed : B.inducedFit
  lockAndKeyClosed : B.lockAndKey
  conformationalChangeClosed : B.conformationalChange

def ActiveSiteBindingClosed (B : ActiveSiteBindingPackage) : Prop :=
  B.bindingAffinity ∧ B.specificity ∧ B.inducedFit ∧ B.lockAndKey ∧ B.conformationalChange

theorem active_site_binding_closed_from_evidence (B : ActiveSiteBindingPackage) (E : ActiveSiteBindingEvidence B) : ActiveSiteBindingClosed B := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.specificityClosed
      (And.intro E.inducedFitClosed
        (And.intro E.lockAndKeyClosed E.conformationalChangeClosed)))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse