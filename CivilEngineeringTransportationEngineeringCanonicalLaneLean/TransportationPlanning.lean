import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure TransportationPlanningPackage where
  tripGeneration : Prop
  tripDistribution : Prop
  modeChoice : Prop
  routeAssignment : Prop

structure TransportationPlanningEvidence (T : TransportationPlanningPackage) where
  tripGenerationClosed : T.tripGeneration
  tripDistributionClosed : T.tripDistribution
  modeChoiceClosed : T.modeChoice
  routeAssignmentClosed : T.routeAssignment

def TransportationPlanningClosed (T : TransportationPlanningPackage) : Prop :=
  T.tripGeneration ∧ T.tripDistribution ∧ T.modeChoice ∧ T.routeAssignment

theorem transportation_planning_closed_from_evidence
    (T : TransportationPlanningPackage) (E : TransportationPlanningEvidence T) :
    TransportationPlanningClosed T := by
  exact And.intro E.tripGenerationClosed
    (And.intro E.tripDistributionClosed
      (And.intro E.modeChoiceClosed E.routeAssignmentClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse