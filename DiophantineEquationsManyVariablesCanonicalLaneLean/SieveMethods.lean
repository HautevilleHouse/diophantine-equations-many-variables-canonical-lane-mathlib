import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure SieveMethodsPackage where
  sieveFunction : Type u
  congruenceConditions : Prop
  asymptoticDensity : Prop
  levelOfDistribution : Prop
  parityObstruction : Prop

structure SieveMethodsEvidence (S : SieveMethodsPackage) where
  congruenceConditionsClosed : S.congruenceConditions
  asymptoticDensityClosed : S.asymptoticDensity
  levelOfDistributionClosed : S.levelOfDistribution
  parityObstructionClosed : S.parityObstruction

def SieveMethodsClosed (S : SieveMethodsPackage) : Prop :=
  S.congruenceConditions ∧ S.asymptoticDensity ∧
  S.levelOfDistribution ∧ S.parityObstruction

theorem sieve_methods_closed_from_evidence (S : SieveMethodsPackage)
    (E : SieveMethodsEvidence S) : SieveMethodsClosed S := by
  exact And.intro E.congruenceConditionsClosed
    (And.intro E.asymptoticDensityClosed
      (And.intro E.levelOfDistributionClosed E.parityObstructionClosed))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
