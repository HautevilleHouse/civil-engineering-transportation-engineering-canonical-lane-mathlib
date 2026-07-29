import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure HighwayCapacityManualPackage where
  baseCapacity : Prop
  adjustmentFactors : Prop
  levelOfService : Prop
  freeFlowSpeed : Prop
  jamDensity : Prop
  peakHourFactor : Prop

structure HighwayCapacityManualEvidence (H : HighwayCapacityManualPackage) where
  baseCapacityClosed : H.baseCapacity
  adjustmentFactorsClosed : H.adjustmentFactors
  levelOfServiceClosed : H.levelOfService
  freeFlowSpeedClosed : H.freeFlowSpeed
  jamDensityClosed : H.jamDensity
  peakHourFactorClosed : H.peakHourFactor

def HighwayCapacityManualClosed (H : HighwayCapacityManualPackage) : Prop :=
  H.baseCapacity ∧ H.adjustmentFactors ∧ H.levelOfService ∧ H.freeFlowSpeed ∧ H.jamDensity ∧ H.peakHourFactor

theorem highway_capacity_manual_closed_from_evidence (H : HighwayCapacityManualPackage) (E : HighwayCapacityManualEvidence H) : HighwayCapacityManualClosed H := by
  exact And.intro E.baseCapacityClosed (And.intro E.adjustmentFactorsClosed (And.intro E.levelOfServiceClosed (And.intro E.freeFlowSpeedClosed (And.intro E.jamDensityClosed E.peakHourFactorClosed))))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse