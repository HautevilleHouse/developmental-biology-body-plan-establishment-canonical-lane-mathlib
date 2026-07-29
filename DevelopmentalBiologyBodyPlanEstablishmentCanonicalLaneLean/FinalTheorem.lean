import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean

def ConstrainedBodyPlanClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_body_plan_endgame (A : AdmissibleClass) :
    ConstrainedBodyPlanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean
end HautevilleHouse
