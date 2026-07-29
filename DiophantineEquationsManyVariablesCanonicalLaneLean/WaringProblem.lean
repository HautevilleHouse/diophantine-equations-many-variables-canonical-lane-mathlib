import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure WaringProblemPackage (H : HardyLittlewoodPackage) where
  k : ℕ
  s : ℕ
  g_k : ℕ
  G_k : ℕ
  asymptoticFormulaForRepresentations : Prop
  sufficientVariablesCondition : Prop
  localConditions : Prop
  smoothNumberEstimates : Prop
  weylSumEstimates : Prop
  mainTerm : Prop
  errorTerm : Prop

structure WaringProblemEvidence {H : HardyLittlewoodPackage}
    (W : WaringProblemPackage H) where
  asymptoticFormulaForRepresentationsClosed : W.asymptoticFormulaForRepresentations
  sufficientVariablesConditionClosed : W.sufficientVariablesCondition
  localConditionsClosed : W.localConditions
  smoothNumberEstimatesClosed : W.smoothNumberEstimates
  weylSumEstimatesClosed : W.weylSumEstimates
  mainTermClosed : W.mainTerm
  errorTermClosed : W.errorTerm

def WaringProblemClosed {H : HardyLittlewoodPackage}
    (W : WaringProblemPackage H) : Prop :=
  W.asymptoticFormulaForRepresentations ∧ W.sufficientVariablesCondition ∧
  W.localConditions ∧ W.smoothNumberEstimates ∧
  W.weylSumEstimates ∧ W.mainTerm ∧ W.errorTerm

theorem waring_problem_closed_from_evidence
    {H : HardyLittlewoodPackage} (W : WaringProblemPackage H)
    (E : WaringProblemEvidence W) : WaringProblemClosed W := by
  exact And.intro E.asymptoticFormulaForRepresentationsClosed
    (And.intro E.sufficientVariablesConditionClosed
      (And.intro E.localConditionsClosed
        (And.intro E.smoothNumberEstimatesClosed
          (And.intro E.weylSumEstimatesClosed
            (And.intro E.mainTermClosed E.errorTermClosed)))))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse