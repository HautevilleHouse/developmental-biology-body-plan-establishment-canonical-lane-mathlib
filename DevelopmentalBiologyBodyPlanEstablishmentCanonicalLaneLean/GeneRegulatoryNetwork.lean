import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean.MorphogenGradient

namespace HautevilleHouse
namespace DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean

structure GeneRegulatoryNetworkPackage (M : MorphogenGradientPackage) where
  transcriptionFactors : Type u
  targetGenes : Type v
  regulatoryInteractions : Prop
  feedforwardLoops : Prop
  networkRobustness : Prop
  bodyPlanEndpoint : Prop

structure GeneRegulatoryNetworkEvidence {M : MorphogenGradientPackage} (G : GeneRegulatoryNetworkPackage M) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  feedforwardLoopsClosed : G.feedforwardLoops
  networkRobustnessClosed : G.networkRobustness
  bodyPlanEndpointClosed : G.bodyPlanEndpoint

def GeneRegulatoryNetworkClosed {M : MorphogenGradientPackage} (G : GeneRegulatoryNetworkPackage M) : Prop :=
  G.regulatoryInteractions ∧ G.feedforwardLoops ∧ G.networkRobustness ∧ G.bodyPlanEndpoint

theorem gene_regulatory_network_closed_from_evidence {M : MorphogenGradientPackage} (G : GeneRegulatoryNetworkPackage M) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed (And.intro E.feedforwardLoopsClosed (And.intro E.networkRobustnessClosed E.bodyPlanEndpointClosed))

theorem gene_regulatory_network_supplies_body_plan_endpoint {M : MorphogenGradientPackage} (G : GeneRegulatoryNetworkPackage M) : G.bodyPlanEndpoint :=
  G.bodyPlanEndpoint

end DevelopmentalBiologyBodyPlanEstablishmentCanonicalLaneLean
end HautevilleHouse
