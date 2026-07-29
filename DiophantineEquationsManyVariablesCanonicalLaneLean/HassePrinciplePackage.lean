import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineManyVariablesCanonicalLaneLean

structure HassePrinciplePackage where
  equation : Type u
  localSolutions : Prop
  globalSolution : Prop
  hassePrincipleHolds : Prop

structure HassePrincipleEvidence (H : HassePrinciplePackage) where
  localSolutionsClosed : H.localSolutions
  globalSolutionClosed : H.globalSolution
  hassePrincipleHoldsClosed : H.hassePrincipleHolds

def HassePrincipleClosed (H : HassePrinciplePackage) : Prop :=
  H.localSolutions ∧ H.globalSolution ∧ H.hassePrincipleHolds

theorem hasse_principle_closed_from_evidence (H : HassePrinciplePackage) (E : HassePrincipleEvidence H) :
    HassePrincipleClosed H := by
  exact And.intro E.localSolutionsClosed (And.intro E.globalSolutionClosed E.hassePrincipleHoldsClosed)

end DiophantineManyVariablesCanonicalLaneLean
end HautevilleHouse