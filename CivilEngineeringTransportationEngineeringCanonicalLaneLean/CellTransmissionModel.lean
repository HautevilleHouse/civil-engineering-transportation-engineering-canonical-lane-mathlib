import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure CellTransmissionPackage where
  cellNetwork : Type u
  timeStep : Type v
  cellLength : Type w
  supplyFunction : Type x
  demandFunction : Type y
  conservationAcrossCells : Prop
  sendingReceivingRule : Prop
  convergenceCondition : Prop

structure CellTransmissionEvidence (C : CellTransmissionPackage) where
  conservationAcrossCellsClosed : C.conservationAcrossCells
  sendingReceivingRuleClosed : C.sendingReceivingRule
  convergenceConditionClosed : C.convergenceCondition

def CellTransmissionClosed (C : CellTransmissionPackage) : Prop :=
  C.conservationAcrossCells ∧ C.sendingReceivingRule ∧ C.convergenceCondition

theorem cell_transmission_closed_from_evidence (C : CellTransmissionPackage)
    (E : CellTransmissionEvidence C) : CellTransmissionClosed C := by
  exact And.intro E.conservationAcrossCellsClosed
    (And.intro E.sendingReceivingRuleClosed E.convergenceConditionClosed)

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse