import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure TrafficFlowPDEPackage where
  timeParameter : Type u
  densityAt : timeParameter -> Type v
  initialDensityMatches : Prop
  differentiableDensityFamily : Prop
  lwrEquation : Prop
  boundaryConditions : Prop

structure TrafficFlowPDEEvidence (F : TrafficFlowPDEPackage) where
  initialDensityMatchesClosed : F.initialDensityMatches
  differentiableDensityFamilyClosed : F.differentiableDensityFamily
  lwrEquationClosed : F.lwrEquation
  boundaryConditionsClosed : F.boundaryConditions

def TrafficFlowPDEClosed (F : TrafficFlowPDEPackage) : Prop :=
  F.initialDensityMatches ∧ F.differentiableDensityFamily ∧ F.lwrEquation ∧ F.boundaryConditions

theorem traffic_flow_pde_closed_from_evidence (F : TrafficFlowPDEPackage) (E : TrafficFlowPDEEvidence F) : TrafficFlowPDEClosed F := by
  exact And.intro E.initialDensityMatchesClosed
    (And.intro E.differentiableDensityFamilyClosed
      (And.intro E.lwrEquationClosed E.boundaryConditionsClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse