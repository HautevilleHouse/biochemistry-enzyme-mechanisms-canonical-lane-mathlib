import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEnzymeMechanismsCanonicalLaneLean

def bridgeClosed (A : AdmittedObject) : Prop :=
  A.object.bindingAffinity ∧ A.object.catalyticEfficiency

theorem bridge_from_admissible_class (A : AdmittedObject) : bridgeClosed A :=
  by
    exact A.object.conclusion

end BiochemistryEnzymeMechanismsCanonicalLaneLean
end HautevilleHouse