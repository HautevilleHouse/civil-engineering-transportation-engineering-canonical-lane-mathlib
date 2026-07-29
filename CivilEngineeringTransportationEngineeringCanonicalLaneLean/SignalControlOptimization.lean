import HautevilleHouse.CivilEngineeringTransportationEngineeringCanonicalLaneLean.CapacityAnalysis

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure SignalControlOptimization (T : TrafficFlowModel) (C : CapacityAnalysis T) where
  signalTimings : T.time → ℝ
  delayFunction : T.roadNetwork → T.time → ℝ
  optimalityCondition : Prop
  optimalityConditionClosed : optimalityCondition

def SignalControlOptimizationClosed (T : TrafficFlowModel) (C : CapacityAnalysis T) (S : SignalControlOptimization T C) : Prop :=
  S.optimalityCondition

theorem signal_control_optimization_closed_from_evidence (T : TrafficFlowModel) (C : CapacityAnalysis T) (S : SignalControlOptimization T C) :
    SignalControlOptimizationClosed T C S := by
  exact S.optimalityConditionClosed

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse
