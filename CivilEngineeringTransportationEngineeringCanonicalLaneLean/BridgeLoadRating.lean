import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure BridgeLoadRatingPackage where
  deadLoad : Prop
  liveLoad : Prop
  distributionFactors : Prop
  ratingFactor : Prop

structure BridgeLoadRatingEvidence (B : BridgeLoadRatingPackage) where
  deadLoadClosed : B.deadLoad
  liveLoadClosed : B.liveLoad
  distributionFactorsClosed : B.distributionFactors
  ratingFactorClosed : B.ratingFactor

def BridgeLoadRatingClosed (B : BridgeLoadRatingPackage) : Prop :=
  B.deadLoad ∧ B.liveLoad ∧ B.distributionFactors ∧ B.ratingFactor

theorem bridge_load_rating_closed_from_evidence
    (B : BridgeLoadRatingPackage) (E : BridgeLoadRatingEvidence B) :
    BridgeLoadRatingClosed B := by
  exact And.intro E.deadLoadClosed
    (And.intro E.liveLoadClosed
      (And.intro E.distributionFactorsClosed E.ratingFactorClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse