import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

structure EnzymeMechanismSpace where
  enzyme : Type
  substrate : Type
  product : Type
  reaction : Type

structure EnzymeMechanismAdmittedObject where
  space : EnzymeMechanismSpace
  michaelisMentenValid : Prop
  steadyStateReached : Prop
  conclusion : michaelisMentenValid ∧ steadyStateReached

structure EnzymeMechanismEndgameState where
  object : EnzymeMechanismAdmittedObject

def EnzymeMechanismWitnessClosed (O : EnzymeMechanismAdmittedObject) : Prop :=
  O.michaelisMentenValid ∧ O.steadyStateReached

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse