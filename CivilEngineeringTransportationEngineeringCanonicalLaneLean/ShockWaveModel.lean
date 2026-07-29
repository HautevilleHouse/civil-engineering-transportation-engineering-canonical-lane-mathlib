import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure ShockWaveModelPackage where
  characteristicSpeed : Prop
  jumpCondition : Prop
  wavePropagation : Prop
  entropyCondition : Prop

structure ShockWaveModelEvidence (S : ShockWaveModelPackage) where
  characteristicSpeedClosed : S.characteristicSpeed
  jumpConditionClosed : S.jumpCondition
  wavePropagationClosed : S.wavePropagation
  entropyConditionClosed : S.entropyCondition

def ShockWaveModelClosed (S : ShockWaveModelPackage) : Prop :=
  S.characteristicSpeed ∧ S.jumpCondition ∧ S.wavePropagation ∧ S.entropyCondition

theorem shock_wave_model_closed_from_evidence (S : ShockWaveModelPackage) (E : ShockWaveModelEvidence S) : ShockWaveModelClosed S := by
  exact And.intro E.characteristicSpeedClosed (And.intro E.jumpConditionClosed (And.intro E.wavePropagationClosed E.entropyConditionClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse