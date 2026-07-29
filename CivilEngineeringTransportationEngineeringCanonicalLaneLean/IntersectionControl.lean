import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure IntersectionControlPackage where
  signalTimingPlan : Prop
  phaseSequence : Prop
  cycleLength : Prop
  vehicleActuation : Prop
  pedestrianPhases : Prop
  coordinationWithAdjacent : Prop

structure IntersectionControlEvidence (C : IntersectionControlPackage) where
  signalTimingPlanClosed : C.signalTimingPlan
  phaseSequenceClosed : C.phaseSequence
  cycleLengthClosed : C.cycleLength
  vehicleActuationClosed : C.vehicleActuation
  pedestrianPhasesClosed : C.pedestrianPhases
  coordinationWithAdjacentClosed : C.coordinationWithAdjacent

def IntersectionControlClosed (C : IntersectionControlPackage) : Prop :=
  C.signalTimingPlan ∧ C.phaseSequence ∧ C.cycleLength ∧ C.vehicleActuation ∧ C.pedestrianPhases ∧ C.coordinationWithAdjacent

theorem intersection_control_closed_from_evidence (C : IntersectionControlPackage) (E : IntersectionControlEvidence C) : IntersectionControlClosed C := by
  exact And.intro E.signalTimingPlanClosed (And.intro E.phaseSequenceClosed (And.intro E.cycleLengthClosed (And.intro E.vehicleActuationClosed (And.intro E.pedestrianPhasesClosed E.coordinationWithAdjacentClosed))))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse