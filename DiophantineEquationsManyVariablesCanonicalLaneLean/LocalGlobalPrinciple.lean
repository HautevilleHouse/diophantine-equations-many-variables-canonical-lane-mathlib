import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure LocalGlobalPrinciplePackage where
  localSolubilityConditions : Prop
  globalSolubilityConclusion : Prop
  counterexamplesExcluded : Prop
  hassePrincipleHolds : Prop

structure LocalGlobalPrincipleEvidence (L : LocalGlobalPrinciplePackage) where
  localSolubilityConditionsClosed : L.localSolubilityConditions
  globalSolubilityConclusionClosed : L.globalSolubilityConclusion
  counterexamplesExcludedClosed : L.counterexamplesExcluded
  hassePrincipleHoldsClosed : L.hassePrincipleHolds

def LocalGlobalPrincipleClosed (L : LocalGlobalPrinciplePackage) : Prop :=
  L.localSolubilityConditions ∧ L.globalSolubilityConclusion ∧
  L.counterexamplesExcluded ∧ L.hassePrincipleHolds

theorem local_global_principle_closed_from_evidence
    (L : LocalGlobalPrinciplePackage)
    (E : LocalGlobalPrincipleEvidence L) :
    LocalGlobalPrincipleClosed L := by
  exact And.intro E.localSolubilityConditionsClosed
    (And.intro E.globalSolubilityConclusionClosed
      (And.intro E.counterexamplesExcludedClosed E.hassePrincipleHoldsClosed))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
