import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure TrafficFlowModelPackage where
  flowRate : Prop
  density : Prop
  speed : Prop
  fundamentalDiagram : Prop
  shockWaveTheory : Prop
  capacityAnalysis : Prop

structure TrafficFlowModelEvidence (M : TrafficFlowModelPackage) where
  flowRateClosed : M.flowRate
  densityClosed : M.density
  speedClosed : M.speed
  fundamentalDiagramClosed : M.fundamentalDiagram
  shockWaveTheoryClosed : M.shockWaveTheory
  capacityAnalysisClosed : M.capacityAnalysis

def TrafficFlowModelClosed (M : TrafficFlowModelPackage) : Prop :=
  M.flowRate ∧ M.density ∧ M.speed ∧ M.fundamentalDiagram ∧ M.shockWaveTheory ∧ M.capacityAnalysis

theorem traffic_flow_model_closed_from_evidence (M : TrafficFlowModelPackage) (E : TrafficFlowModelEvidence M) : TrafficFlowModelClosed M := by
  exact And.intro E.flowRateClosed (And.intro E.densityClosed (And.intro E.speedClosed (And.intro E.fundamentalDiagramClosed (And.intro E.shockWaveTheoryClosed E.capacityAnalysisClosed))))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse