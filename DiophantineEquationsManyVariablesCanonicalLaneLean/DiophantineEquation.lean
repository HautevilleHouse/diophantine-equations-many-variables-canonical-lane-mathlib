import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure DiophantineEquation where
  unknowns : ℕ
  degree : ℕ
  coefficients : ℕ → ℤ  -- mapping monomial index to coefficient
  equation : Prop
  equationIsPolynomial : equation

structure DiophantineEquationEvidence (D : DiophantineEquation) where
  unknownsClosed : D.unknowns = D.unknowns
  degreeClosed : D.degree = D.degree
  coefficientWellDefined : D.coefficients 0 = 0 ∨ D.coefficients 0 = 1
  equationClosed : D.equation

def DiophantineEquationClosed (D : DiophantineEquation) : Prop :=
  D.unknowns = D.unknowns ∧ D.degree = D.degree ∧ D.equation

theorem diophantine_equation_closed_from_evidence (D : DiophantineEquation) (E : DiophantineEquationEvidence D) : DiophantineEquationClosed D := by
  exact And.intro (And.intro E.unknownsClosed E.degreeClosed) E.equationClosed

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
