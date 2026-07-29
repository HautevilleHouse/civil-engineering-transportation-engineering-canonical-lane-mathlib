import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure QueueingNetworkPackage where
  nodeSet : Type u
  serviceRate : Type v
  arrivalProcess : Type w
  queueEvolutionEquation : Prop
  stationaryDistribution : Prop
  stabilityCondition : Prop

structure QueueingNetworkEvidence (Q : QueueingNetworkPackage) where
  queueEvolutionEquationClosed : Q.queueEvolutionEquation
  stationaryDistributionClosed : Q.stationaryDistribution
  stabilityConditionClosed : Q.stabilityCondition

def QueueingNetworkClosed (Q : QueueingNetworkPackage) : Prop :=
  Q.queueEvolutionEquation ∧ Q.stationaryDistribution ∧ Q.stabilityCondition

theorem queueing_network_closed_from_evidence (Q : QueueingNetworkPackage)
    (E : QueueingNetworkEvidence Q) : QueueingNetworkClosed Q := by
  exact And.intro E.queueEvolutionEquationClosed
    (And.intro E.stationaryDistributionClosed E.stabilityConditionClosed)

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse