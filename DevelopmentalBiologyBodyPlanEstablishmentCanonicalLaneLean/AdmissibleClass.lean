import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean

structure DevelopmentalBiologyObject where
  organism : Type
  bodyPlanEstablished : Prop
  conclusion : bodyPlanEstablished

structure AdmissibleClass where
  object : DevelopmentalBiologyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean
end HautevilleHouse
