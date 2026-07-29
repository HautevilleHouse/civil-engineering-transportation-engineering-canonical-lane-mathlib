import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure PavementDesignPackage where
  structuralNumber : Prop
  layerCoefficients : Prop
  drainageModifier : Prop
  loadRepetitions : Prop

structure PavementDesignEvidence (P : PavementDesignPackage) where
  structuralNumberClosed : P.structuralNumber
  layerCoefficientsClosed : P.layerCoefficients
  drainageModifierClosed : P.drainageModifier
  loadRepetitionsClosed : P.loadRepetitions

def PavementDesignClosed (P : PavementDesignPackage) : Prop :=
  P.structuralNumber ∧ P.layerCoefficients ∧ P.drainageModifier ∧ P.loadRepetitions

theorem pavement_design_closed_from_evidence
    (P : PavementDesignPackage) (E : PavementDesignEvidence P) :
    PavementDesignClosed P := by
  exact And.intro E.structuralNumberClosed
    (And.intro E.layerCoefficientsClosed
      (And.intro E.drainageModifierClosed E.loadRepetitionsClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse