import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure ExponentialDiophantineEquation where
  variables : ℕ
  base : ℕ → ℕ
  exponent : ℕ → ℕ
  coefficient : ℕ → ℤ
  equation : Prop

structure ExponentialDiophantineEquationEvidence (E : ExponentialDiophantineEquation) where
  variablesClosed : E.variables = E.variables
  baseClosed : E.base 0 = 0 ∨ E.base 0 = 1
  exponentClosed : E.exponent 0 = 0 ∨ E.exponent 0 = 1
  coefficientClosed : E.coefficient 0 = 0 ∨ E.coefficient 0 = 1
  equationClosed : E.equation

def ExponentialDiophantineEquationClosed (E : ExponentialDiophantineEquation) : Prop :=
  E.variables = E.variables ∧ E.equation

theorem exponential_diophantine_equation_closed_from_evidence (E : ExponentialDiophantineEquation) (Ev : ExponentialDiophantineEquationEvidence E) : ExponentialDiophantineEquationClosed E := by
  exact And.intro Ev.variablesClosed Ev.equationClosed

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
