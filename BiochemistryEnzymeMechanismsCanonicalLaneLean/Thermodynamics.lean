import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : ℝ
  enthalpyChange : ℝ
  entropyChange : ℝ
  temperature : ℝ
  spontaneity : Prop
  equilibriumConstant : ℝ

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy = -10.0
  enthalpyChangeClosed : T.enthalpyChange = -20.0
  entropyChangeClosed : T.entropyChange = 30.0
  temperatureClosed : T.temperature = 298.0
  spontaneityClosed : T.spontaneity
  equilibriumConstantClosed : T.equilibriumConstant = 1e5

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy = -10.0 ∧ T.enthalpyChange = -20.0 ∧
  T.entropyChange = 30.0 ∧ T.temperature = 298.0 ∧
  T.spontaneity ∧ T.equilibriumConstant = 1e5

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T :=
  by
    exact And.intro E.gibbsFreeEnergyClosed
      (And.intro E.enthalpyChangeClosed
        (And.intro E.entropyChangeClosed
          (And.intro E.temperatureClosed
            (And.intro E.spontaneityClosed E.equilibriumConstantClosed))))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse