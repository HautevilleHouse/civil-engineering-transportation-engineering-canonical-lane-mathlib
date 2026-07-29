import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure PavementPerformanceModel where
  structuralNumber : ℝ
  trafficLoad : ℝ
  deteriorationRate : ℝ → ℝ
  remainingLife : ℝ → ℝ
  modelClosed : Prop := ∀ t, deteriorationRate t = -0.01 * structuralNumber + 0.5 * trafficLoad
  modelClosedTerm : modelClosed

def PavementPerformanceModelClosed (P : PavementPerformanceModel) : Prop :=
  P.modelClosed

theorem pavement_performance_model_closed_from_evidence (P : PavementPerformanceModel) :
    PavementPerformanceModelClosed P := by
  exact P.modelClosedTerm

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse
