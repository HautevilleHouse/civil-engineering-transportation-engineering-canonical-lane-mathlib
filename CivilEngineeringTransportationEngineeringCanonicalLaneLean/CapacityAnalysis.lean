import HautevilleHouse.CivilEngineeringTransportationEngineeringCanonicalLaneLean.TrafficFlowModel

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure CapacityAnalysis (T : TrafficFlowModel) where
  maxFlowRate : ℝ
  bottleneckLocations : List T.roadNetwork
  capacityConstraint : Prop
  capacityConstraintClosed : capacityConstraint

def CapacityAnalysisClosed (T : TrafficFlowModel) (C : CapacityAnalysis T) : Prop :=
  C.capacityConstraint

theorem capacity_analysis_closed_from_evidence (T : TrafficFlowModel) (C : CapacityAnalysis T) :
    CapacityAnalysisClosed T C := by
  exact C.capacityConstraintClosed

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse
