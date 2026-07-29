import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure MolecularOrbitalPackage where
  homoEnergy : ℝ
  lumoEnergy : ℝ
  bandGap : ℝ
  orbitalSymmetry : Prop
  frontierOrbitalInteractions : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  homoEnergyClosed : M.homoEnergy = -5.0
  lumoEnergyClosed : M.lumoEnergy = -1.0
  bandGapClosed : M.bandGap = 4.0
  orbitalSymmetryClosed : M.orbitalSymmetry
  frontierOrbitalInteractionsClosed : M.frontierOrbitalInteractions

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.homoEnergy = -5.0 ∧ M.lumoEnergy = -1.0 ∧
  M.bandGap = 4.0 ∧ M.orbitalSymmetry ∧ M.frontierOrbitalInteractions

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage)
    (E : MolecularOrbitalEvidence M) : MolecularOrbitalClosed M :=
  by
    exact And.intro E.homoEnergyClosed
      (And.intro E.lumoEnergyClosed
        (And.intro E.bandGapClosed
          (And.intro E.orbitalSymmetryClosed E.frontierOrbitalInteractionsClosed)))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse