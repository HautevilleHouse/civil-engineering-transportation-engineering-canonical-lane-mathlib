import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure GeometricDesignPackage where
  alignment : Prop
  crossSection : Prop
  sightDistance : Prop
  designSpeed : Prop

structure GeometricDesignEvidence (G : GeometricDesignPackage) where
  alignmentClosed : G.alignment
  crossSectionClosed : G.crossSection
  sightDistanceClosed : G.sightDistance
  designSpeedClosed : G.designSpeed

def GeometricDesignClosed (G : GeometricDesignPackage) : Prop :=
  G.alignment ∧ G.crossSection ∧ G.sightDistance ∧ G.designSpeed

theorem geometric_design_closed_from_evidence
    (G : GeometricDesignPackage) (E : GeometricDesignEvidence G) :
    GeometricDesignClosed G := by
  exact And.intro E.alignmentClosed
    (And.intro E.crossSectionClosed
      (And.intro E.sightDistanceClosed E.designSpeedClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse