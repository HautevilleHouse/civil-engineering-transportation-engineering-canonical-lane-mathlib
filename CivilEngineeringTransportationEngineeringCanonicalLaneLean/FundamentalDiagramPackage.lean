import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure FundamentalDiagramPackage where
  freeFlowSpeed : Prop
  jamDensity : Prop
  criticalDensity : Prop
  capacityFlow : Prop
  speedDensityRelation : Prop

structure FundamentalDiagramEvidence (D : FundamentalDiagramPackage) where
  freeFlowSpeedClosed : D.freeFlowSpeed
  jamDensityClosed : D.jamDensity
  criticalDensityClosed : D.criticalDensity
  capacityFlowClosed : D.capacityFlow
  speedDensityRelationClosed : D.speedDensityRelation

def FundamentalDiagramClosed (D : FundamentalDiagramPackage) : Prop :=
  D.freeFlowSpeed ∧ D.jamDensity ∧ D.criticalDensity ∧ D.capacityFlow ∧ D.speedDensityRelation

theorem fundamental_diagram_closed_from_evidence (D : FundamentalDiagramPackage) (E : FundamentalDiagramEvidence D) : FundamentalDiagramClosed D := by
  exact And.intro E.freeFlowSpeedClosed (And.intro E.jamDensityClosed (And.intro E.criticalDensityClosed (And.intro E.capacityFlowClosed E.speedDensityRelationClosed)))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse