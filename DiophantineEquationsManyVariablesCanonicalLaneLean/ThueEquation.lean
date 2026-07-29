import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineEquationsManyVariablesCanonicalLaneLean.DiophantineEquation

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure ThueEquation (D : DiophantineEquation) where
  homogeneous : Prop
  degreeAtLeastThree : D.degree ≥ 3
  finiteSolutions : Prop
  explicitBound : ℕ
  boundIsEffective : ∀ x : ℤ, D.equation → |x| ≤ explicitBound

structure ThueEquationEvidence {D : DiophantineEquation} (T : ThueEquation D) where
  homogeneousClosed : T.homogeneous
  degreeAtLeastThreeClosed : T.degreeAtLeastThree
  finiteSolutionsClosed : T.finiteSolutions
  explicitBoundClosed : T.explicitBound = T.explicitBound
  boundIsEffectiveClosed : T.boundIsEffective

def ThueEquationClosed {D : DiophantineEquation} (T : ThueEquation D) : Prop :=
  T.homogeneous ∧ T.degreeAtLeastThree ∧ T.finiteSolutions ∧
  T.boundIsEffective

theorem thue_equation_closed_from_evidence {D : DiophantineEquation} (T : ThueEquation D) (E : ThueEquationEvidence T) : ThueEquationClosed T := by
  exact And.intro E.homogeneousClosed (And.intro E.degreeAtLeastThreeClosed (And.intro E.finiteSolutionsClosed E.boundIsEffectiveClosed))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
