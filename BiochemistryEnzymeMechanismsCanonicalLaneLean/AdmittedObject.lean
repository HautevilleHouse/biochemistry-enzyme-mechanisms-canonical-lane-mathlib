import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure EnzymeMechanismObject where
  enzymeType : Type u
  substrateType : Type v
  productType : Type w
  mechanismValid : Prop
  conclusion : mechanismValid

structure EnzymeAdmittedObject where
  object : EnzymeMechanismObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : EnzymeAdmittedObject) : Prop :=
  EnzymeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse