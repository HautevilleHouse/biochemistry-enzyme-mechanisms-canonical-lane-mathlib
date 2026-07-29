import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure EnzymeMechanismAdmittedObject where
  mechanismType : Type u
  kineticModelValid : Prop
  inhibitionModelValid : Prop
  orbitalModelValid : Prop
  thermodynamicModelValid : Prop
  conclusion : kineticModelValid ∧ inhibitionModelValid ∧ orbitalModelValid ∧ thermodynamicModelValid

structure AdmissibleClass where
  object : EnzymeMechanismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse