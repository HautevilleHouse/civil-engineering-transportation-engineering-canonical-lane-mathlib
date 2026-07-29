import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure FundamentalDiagramPackage where
  density : Type u
  flow : Type v
  speed : Type w
  flowDensityRelation : Prop
  criticalDensity : Prop
  capacity : Prop
  jamDensity : Prop

structure FundamentalDiagramEvidence (F : FundamentalDiagramPackage) where
  flowDensityRelationClosed : F.flowDensityRelation
  criticalDensityClosed : F.criticalDensity
  capacityClosed : F.capacity
  jamDensityClosed : F.jamDensity

def FundamentalDiagramClosed (F : FundamentalDiagramPackage) : Prop :=
  F.flowDensityRelation ∧ F.criticalDensity ∧ F.capacity ∧ F.jamDensity

theorem fundamental_diagram_closed_from_evidence (F : FundamentalDiagramPackage)
    (E : FundamentalDiagramEvidence F) : FundamentalDiagramClosed F := by
  exact And.intro E.flowDensityRelationClosed
    (And.intro E.criticalDensityClosed (And.intro E.capacityClosed E.jamDensityClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse