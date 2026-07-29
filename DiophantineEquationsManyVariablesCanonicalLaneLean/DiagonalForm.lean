import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure DiagonalFormPackage where
  coefficients : List ℕ
  numberOfVariables : ℕ
  regularityCondition : Prop
  smallSolutions : Prop
  hasNonTrivialSolution : Prop
  infiniteSolutions : Prop

structure DiagonalFormEvidence (D : DiagonalFormPackage) where
  regularityConditionClosed : D.regularityCondition
  smallSolutionsClosed : D.smallSolutions
  hasNonTrivialSolutionClosed : D.hasNonTrivialSolution
  infiniteSolutionsClosed : D.infiniteSolutions

def DiagonalFormClosed (D : DiagonalFormPackage) : Prop :=
  D.regularityCondition ∧ D.smallSolutions ∧
  D.hasNonTrivialSolution ∧ D.infiniteSolutions

theorem diagonal_form_closed_from_evidence (D : DiagonalFormPackage)
    (E : DiagonalFormEvidence D) : DiagonalFormClosed D := by
  exact And.intro E.regularityConditionClosed
    (And.intro E.smallSolutionsClosed
      (And.intro E.hasNonTrivialSolutionClosed E.infiniteSolutionsClosed))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
