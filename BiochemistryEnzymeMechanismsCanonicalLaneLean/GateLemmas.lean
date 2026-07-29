import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

def gateClosed (A : AdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmittedObject) : gateClosed A :=
  by
    exact A.gateWitness

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse