import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure TrafficFlowTheoryPackage where
  macroscopicVariables : Prop
  conservationLaw : Prop
  fundamentalDiagram : Prop
  shockWaveAnalysis : Prop

structure TrafficFlowTheoryEvidence (T : TrafficFlowTheoryPackage) where
  macroscopicVariablesClosed : T.macroscopicVariables
  conservationLawClosed : T.conservationLaw
  fundamentalDiagramClosed : T.fundamentalDiagram
  shockWaveAnalysisClosed : T.shockWaveAnalysis

def TrafficFlowTheoryClosed (T : TrafficFlowTheoryPackage) : Prop :=
  T.macroscopicVariables ∧ T.conservationLaw ∧ T.fundamentalDiagram ∧ T.shockWaveAnalysis

theorem traffic_flow_theory_closed_from_evidence
    (T : TrafficFlowTheoryPackage) (E : TrafficFlowTheoryEvidence T) :
    TrafficFlowTheoryClosed T := by
  exact And.intro E.macroscopicVariablesClosed
    (And.intro E.conservationLawClosed
      (And.intro E.fundamentalDiagramClosed E.shockWaveAnalysisClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse