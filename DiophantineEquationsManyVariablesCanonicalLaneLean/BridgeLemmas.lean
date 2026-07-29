import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
