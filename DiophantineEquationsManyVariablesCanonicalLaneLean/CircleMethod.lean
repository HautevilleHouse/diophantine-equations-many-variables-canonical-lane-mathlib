import DiophantineEquationsManyVariablesCanonicalLaneLean.HardyLittlewoodPackage

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure CircleMethodPackage {D : DiophantineSystem} (H : HardyLittlewoodPackage D) where
  majorArcsContribution : ℚ
  minorArcsBound : ℚ
  exponentialSumEstimates : Prop
  circleMethodBound : Prop

structure CircleMethodEvidence {D : DiophantineSystem} {H : HardyLittlewoodPackage D} (C : CircleMethodPackage H) where
  majorArcsExplicit : C.majorArcsContribution = 1
  minorArcsEstimated : C.minorArcsBound < 1
  circleMethodProved : C.circleMethodBound

def CircleMethodClosed {D : DiophantineSystem} {H : HardyLittlewoodPackage D} (C : CircleMethodPackage H) : Prop :=
  C.circleMethodBound ∧ C.majorArcsContribution - C.minorArcsBound > 0

theorem circle_method_closed_from_evidence
    {D : DiophantineSystem} {H : HardyLittlewoodPackage D}
    (C : CircleMethodPackage H) (E : CircleMethodEvidence C) :
    CircleMethodClosed C := by
  refine And.intro E.circleMethodProved ?_
  have hpos : C.majorArcsContribution - C.minorArcsBound > 0 := by
    have : C.majorArcsContribution > C.minorArcsBound := by
      linarith
    linarith
  exact hpos

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse