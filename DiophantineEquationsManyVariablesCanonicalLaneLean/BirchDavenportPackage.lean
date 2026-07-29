import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineManyVariablesCanonicalLaneLean

structure BirchDavenportPackage where
  equation : Type u
  degree : Nat
  numberOfVariables : Nat
  localSolubilityCondition : Prop
  globalSolubility : Prop

structure BirchDavenportEvidence (B : BirchDavenportPackage) where
  localSolubilityConditionClosed : B.localSolubilityCondition
  globalSolubilityClosed : B.globalSolubility

def BirchDavenportClosed (B : BirchDavenportPackage) : Prop :=
  B.localSolubilityCondition ∧ B.globalSolubility

theorem birch_davenport_closed_from_evidence (B : BirchDavenportPackage) (E : BirchDavenportEvidence B) :
    BirchDavenportClosed B := by
  exact And.intro E.localSolubilityConditionClosed E.globalSolubilityClosed

end DiophantineManyVariablesCanonicalLaneLean
end HautevilleHouse