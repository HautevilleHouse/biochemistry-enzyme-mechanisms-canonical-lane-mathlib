import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure EnzymeObject where
  enzyme : Type
  substrate : Type
  activeSite : Type
  bindingAffinity : Prop
  catalyticEfficiency : Prop
  conclusion : bindingAffinity ∧ catalyticEfficiency

structure AdmittedObject where
  object : EnzymeObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse