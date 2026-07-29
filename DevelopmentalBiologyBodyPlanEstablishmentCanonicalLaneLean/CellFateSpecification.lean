import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean.GeneRegulatoryNetwork

namespace HautevilleHouse
namespace DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean

structure CellFateSpecificationPackage {M : MorphogenGradientPackage} {G : GeneRegulatoryNetworkPackage M} where
  cellTypes : Type u
  fateDecisions : Prop
  spatialPatterning : Prop
  lineageRestriction : Prop
  terminalDifferentiation : Prop

structure CellFateSpecificationEvidence {M : MorphogenGradientPackage} {G : GeneRegulatoryNetworkPackage M} (C : CellFateSpecificationPackage M G) where
  fateDecisionsClosed : C.fateDecisions
  spatialPatterningClosed : C.spatialPatterning
  lineageRestrictionClosed : C.lineageRestriction
  terminalDifferentiationClosed : C.terminalDifferentiation

def CellFateSpecificationClosed {M : MorphogenGradientPackage} {G : GeneRegulatoryNetworkPackage M} (C : CellFateSpecificationPackage M G) : Prop :=
  C.fateDecisions ∧ C.spatialPatterning ∧ C.lineageRestriction ∧ C.terminalDifferentiation

theorem cell_fate_specification_closed_from_evidence {M : MorphogenGradientPackage} {G : GeneRegulatoryNetworkPackage M} (C : CellFateSpecificationPackage M G) (E : CellFateSpecificationEvidence C) :
    CellFateSpecificationClosed C := by
  exact And.intro E.fateDecisionsClosed (And.intro E.spatialPatterningClosed (And.intro E.lineageRestrictionClosed E.terminalDifferentiationClosed))

end DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean
end HautevilleHouse
