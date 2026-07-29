import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure RouteChoiceAssignmentPackage where
  originDestinationMatrix : Prop
  pathSet : Prop
  costFunction : Prop
  userEquilibrium : Prop
  systemOptimum : Prop
  assignmentAlgorithm : Prop

structure RouteChoiceAssignmentEvidence (R : RouteChoiceAssignmentPackage) where
  originDestinationMatrixClosed : R.originDestinationMatrix
  pathSetClosed : R.pathSet
  costFunctionClosed : R.costFunction
  userEquilibriumClosed : R.userEquilibrium
  systemOptimumClosed : R.systemOptimum
  assignmentAlgorithmClosed : R.assignmentAlgorithm

def RouteChoiceAssignmentClosed (R : RouteChoiceAssignmentPackage) : Prop :=
  R.originDestinationMatrix ∧ R.pathSet ∧ R.costFunction ∧ R.userEquilibrium ∧ R.systemOptimum ∧ R.assignmentAlgorithm

theorem route_choice_assignment_closed_from_evidence (R : RouteChoiceAssignmentPackage) (E : RouteChoiceAssignmentEvidence R) : RouteChoiceAssignmentClosed R := by
  exact And.intro E.originDestinationMatrixClosed (And.intro E.pathSetClosed (And.intro E.costFunctionClosed (And.intro E.userEquilibriumClosed (And.intro E.systemOptimumClosed E.assignmentAlgorithmClosed))))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse