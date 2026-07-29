import HautevilleHouse.BiochemistryEnzymeMechanismsCanonicalLaneLean.AdmittedObject

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

def EnzymeWitnessClosed (O : EnzymeMechanismObject) : Prop :=
  O.mechanismValid

def bridgeClosed (A : EnzymeAdmittedObject) : Prop :=
  EnzymeWitnessClosed A.object

theorem bridge_from_admissible_class (A : EnzymeAdmittedObject) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : EnzymeAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : EnzymeAdmittedObject) : gateClosed A := by
  exact A.gateWitness

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse