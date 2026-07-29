import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure WardropEquilibriumPackage where
  originDestinationDemand : Type u
  pathSet : Type v
  travelTimeFunction : Type w
  userEquilibriumCondition : Prop
  systemOptimumCondition : Prop
  variationalInequalityFormulation : Prop

structure WardropEquilibriumEvidence (W : WardropEquilibriumPackage) where
  userEquilibriumConditionClosed : W.userEquilibriumCondition
  systemOptimumConditionClosed : W.systemOptimumCondition
  variationalInequalityFormulationClosed : W.variationalInequalityFormulation

def WardropEquilibriumClosed (W : WardropEquilibriumPackage) : Prop :=
  W.userEquilibriumCondition ∧ W.systemOptimumCondition ∧ W.variationalInequalityFormulation

theorem wardrop_equilibrium_closed_from_evidence (W : WardropEquilibriumPackage)
    (E : WardropEquilibriumEvidence W) : WardropEquilibriumClosed W := by
  exact And.intro E.userEquilibriumConditionClosed
    (And.intro E.systemOptimumConditionClosed E.variationalInequalityFormulationClosed)

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse