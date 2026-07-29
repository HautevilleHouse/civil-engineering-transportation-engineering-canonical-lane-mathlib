import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

structure NetworkEquilibriumPackage where
  userEquilibrium : Prop
  systemOptimum : Prop
  wardropPrinciples : Prop
  variationalInequality : Prop

structure NetworkEquilibriumEvidence (E : NetworkEquilibriumPackage) where
  userEquilibriumClosed : E.userEquilibrium
  systemOptimumClosed : E.systemOptimum
  wardropPrinciplesClosed : E.wardropPrinciples
  variationalInequalityClosed : E.variationalInequality

def NetworkEquilibriumClosed (E : NetworkEquilibriumPackage) : Prop :=
  E.userEquilibrium ∧ E.systemOptimum ∧ E.wardropPrinciples ∧ E.variationalInequality

theorem network_equilibrium_closed_from_evidence (E : NetworkEquilibriumPackage) (Ev : NetworkEquilibriumEvidence E) : NetworkEquilibriumClosed E := by
  exact And.intro Ev.userEquilibriumClosed (And.intro Ev.systemOptimumClosed (And.intro Ev.wardropPrinciplesClosed Ev.variationalInequalityClosed))

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse