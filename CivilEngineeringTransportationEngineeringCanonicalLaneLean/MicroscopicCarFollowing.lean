import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure IntelligentDriverModelPackage where
  vehicleSpacing : Type u
  desiredSpeed : Type v
  safeTimeHeadway : Type w
  accelerationFunction : Type x
  accelerationEquation : Prop
  equilibriumCondition : Prop
  stabilityProperty : Prop

structure IntelligentDriverModelEvidence (I : IntelligentDriverModelPackage) where
  accelerationEquationClosed : I.accelerationEquation
  equilibriumConditionClosed : I.equilibriumCondition
  stabilityPropertyClosed : I.stabilityProperty

def IntelligentDriverModelClosed (I : IntelligentDriverModelPackage) : Prop :=
  I.accelerationEquation ∧ I.equilibriumCondition ∧ I.stabilityProperty

theorem intelligent_driver_model_closed_from_evidence (I : IntelligentDriverModelPackage)
    (E : IntelligentDriverModelEvidence I) : IntelligentDriverModelClosed I := by
  exact And.intro E.accelerationEquationClosed
    (And.intro E.equilibriumConditionClosed E.stabilityPropertyClosed)

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse