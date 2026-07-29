import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineManyVariablesCanonicalLaneLean

structure CircleMethodApproximations where
  exponentialSums : Prop
  majorArcs : Prop
  minorArcs : Prop
  asymptoticFormula : Prop

structure CircleMethodEvidence (C : CircleMethodApproximations) where
  exponentialSumsClosed : C.exponentialSums
  majorArcsClosed : C.majorArcs
  minorArcsClosed : C.minorArcs
  asymptoticFormulaClosed : C.asymptoticFormula

def CircleMethodClosed (C : CircleMethodApproximations) : Prop :=
  C.exponentialSums ∧ C.majorArcs ∧ C.minorArcs ∧ C.asymptoticFormula

theorem circle_method_closed_from_evidence (C : CircleMethodApproximations) (E : CircleMethodEvidence C) :
    CircleMethodClosed C := by
  exact And.intro E.exponentialSumsClosed
    (And.intro E.majorArcsClosed (And.intro E.minorArcsClosed E.asymptoticFormulaClosed))

end DiophantineManyVariablesCanonicalLaneLean
end HautevilleHouse