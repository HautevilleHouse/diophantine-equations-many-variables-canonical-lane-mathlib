import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure ManinConjecturePackage where
  fanoVariety : Type u
  rationalPointCountingFunction : Type v
  expectedAsymptotic : Prop
  brauerManinObstruction : Prop
  exceptionalSet : Prop
  compatibilityWithBirationalTransformation : Prop

structure ManinConjectureEvidence (M : ManinConjecturePackage) where
  expectedAsymptoticClosed : M.expectedAsymptotic
  brauerManinObstructionClosed : M.brauerManinObstruction
  exceptionalSetClosed : M.exceptionalSet
  compatibilityWithBirationalTransformationClosed : M.compatibilityWithBirationalTransformation

def ManinConjectureClosed (M : ManinConjecturePackage) : Prop :=
  M.expectedAsymptotic ∧ M.brauerManinObstruction ∧
  M.exceptionalSet ∧ M.compatibilityWithBirationalTransformation

theorem manin_conjecture_closed_from_evidence (M : ManinConjecturePackage)
    (E : ManinConjectureEvidence M) : ManinConjectureClosed M := by
  exact And.intro E.expectedAsymptoticClosed
    (And.intro E.brauerManinObstructionClosed
      (And.intro E.exceptionalSetClosed E.compatibilityWithBirationalTransformationClosed))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
