import HautevilleHouse.BiochemistryEnzymeMechanismsCanonicalLaneLean.AdmittedObject

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure EnzymeKineticsPackage where
  michaelisConstant : Prop
  turnoverNumber : Prop
  catalyticEfficiency : Prop
  steadyStateAssumption : Prop
  initialRateEquation : Prop

structure EnzymeKineticsEvidence (K : EnzymeKineticsPackage) where
  michaelisConstantClosed : K.michaelisConstant
  turnoverNumberClosed : K.turnoverNumber
  catalyticEfficiencyClosed : K.catalyticEfficiency
  steadyStateAssumptionClosed : K.steadyStateAssumption
  initialRateEquationClosed : K.initialRateEquation

def EnzymeKineticsClosed (K : EnzymeKineticsPackage) : Prop :=
  K.michaelisConstant ∧ K.turnoverNumber ∧ K.catalyticEfficiency ∧
  K.steadyStateAssumption ∧ K.initialRateEquation

theorem enzyme_kinetics_closed_from_evidence (K : EnzymeKineticsPackage) (E : EnzymeKineticsEvidence K) : EnzymeKineticsClosed K := by
  exact And.intro E.michaelisConstantClosed
    (And.intro E.turnoverNumberClosed
      (And.intro E.catalyticEfficiencyClosed
        (And.intro E.steadyStateAssumptionClosed E.initialRateEquationClosed)))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse