import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : Type u
  sourceLocation : MorphogenGradientPackage.morphogen -> Prop
  gradientFormation : Prop
  concentrationProfile : Prop
  positionalInformationCarried : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  sourceLocationClosed : M.sourceLocation
  gradientFormationClosed : M.gradientFormation
  concentrationProfileClosed : M.concentrationProfile
  positionalInformationCarriedClosed : M.positionalInformationCarried

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.sourceLocation ∧ M.gradientFormation ∧ M.concentrationProfile ∧ M.positionalInformationCarried

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.sourceLocationClosed (And.intro E.gradientFormationClosed (And.intro E.concentrationProfileClosed E.positionalInformationCarriedClosed))

end DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean
end HautevilleHouse
