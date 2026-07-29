import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringTransportationEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TransportationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CivilEngineeringTransportationEngineeringCanonicalLaneLean
end HautevilleHouse
