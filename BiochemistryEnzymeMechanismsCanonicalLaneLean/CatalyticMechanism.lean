import HautevilleHouse.BiochemistryEnzymeMechanismsCanonicalLaneLean.AdmittedObject

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure CatalyticMechanismPackage where
  transitionStateStabilization : Prop
  covalentCatalysis : Prop
  acidBaseCatalysis : Prop
  metalIonCatalysis : Prop
  proximityOrientation : Prop

structure CatalyticMechanismEvidence (C : CatalyticMechanismPackage) where
  transitionStateStabilizationClosed : C.transitionStateStabilization
  covalentCatalysisClosed : C.covalentCatalysis
  acidBaseCatalysisClosed : C.acidBaseCatalysis
  metalIonCatalysisClosed : C.metalIonCatalysis
  proximityOrientationClosed : C.proximityOrientation

def CatalyticMechanismClosed (C : CatalyticMechanismPackage) : Prop :=
  C.transitionStateStabilization ∧ C.covalentCatalysis ∧ C.acidBaseCatalysis ∧
  C.metalIonCatalysis ∧ C.proximityOrientation

theorem catalytic_mechanism_closed_from_evidence (C : CatalyticMechanismPackage) (E : CatalyticMechanismEvidence C) : CatalyticMechanismClosed C := by
  exact And.intro E.transitionStateStabilizationClosed
    (And.intro E.covalentCatalysisClosed
      (And.intro E.acidBaseCatalysisClosed
        (And.intro E.metalIonCatalysisClosed E.proximityOrientationClosed)))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse