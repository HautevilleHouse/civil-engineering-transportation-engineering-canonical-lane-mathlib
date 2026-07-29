import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure TrafficAssignmentPackage where
  linkCostFunction : Prop
  demandPattern : Prop
  flowConservation : Prop
  convergenceCriterion : Prop

structure TrafficAssignmentEvidence (T : TrafficAssignmentPackage) where
  linkCostFunctionClosed : T.linkCostFunction
  demandPatternClosed : T.demandPattern
  flowConservationClosed : T.flowConservation
  convergenceCriterionClosed : T.convergenceCriterion

def TrafficAssignmentClosed (T : TrafficAssignmentPackage) : Prop :=
  T.linkCostFunction ∧ T.demandPattern ∧ T.flowConservation ∧ T.convergenceCriterion

theorem traffic_assignment_closed_from_evidence (T : TrafficAssignmentPackage) (E : TrafficAssignmentEvidence T) : TrafficAssignmentClosed T := by
  exact And.intro E.linkCostFunctionClosed (And.intro E.demandPatternClosed (And.intro E.flowConservationClosed E.convergenceCriterionClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse