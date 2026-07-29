import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure SteadyStatePackage where
  steadyStateAssumption : Prop
  quasiSteadyState : Prop
  michaelisMentenDerived : Prop
  rateLawClosed : Prop

structure SteadyStateEvidence (P : SteadyStatePackage) where
  steadyStateAssumptionClosed : P.steadyStateAssumption
  quasiSteadyStateClosed : P.quasiSteadyState
  michaelisMentenDerivedClosed : P.michaelisMentenDerived
  rateLawClosedClosed : P.rateLawClosed

def SteadyStateClosed (P : SteadyStatePackage) : Prop :=
  P.steadyStateAssumption ∧ P.quasiSteadyState ∧ P.michaelisMentenDerived ∧ P.rateLawClosed

theorem steady_state_closed_from_evidence (P : SteadyStatePackage) (E : SteadyStateEvidence P) :
    SteadyStateClosed P := by
  exact And.intro E.steadyStateAssumptionClosed
    (And.intro E.quasiSteadyStateClosed
      (And.intro E.michaelisMentenDerivedClosed E.rateLawClosedClosed))

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse