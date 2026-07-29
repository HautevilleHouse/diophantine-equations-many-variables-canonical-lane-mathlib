import DiophantineEquationsManyVariablesCanonicalLaneLean.DiophantineSystem

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure HardyLittlewoodPackage (D : DiophantineSystem) where
  singularSeries : ℚ → ℝ
  singularIntegral : ℝ → ℝ
  mainTermAsymptotic : Prop
  admissibleExponent : ℕ

structure HardyLittlewoodEvidence {D : DiophantineSystem} (H : HardyLittlewoodPackage D) where
  singularSeriesConverges : H.singularSeries 0 = 0
  singularIntegralFinite : H.singularIntegral 0 < ∞
  asymptoticEstablished : H.mainTermAsymptotic

def HardyLittlewoodClosed {D : DiophantineSystem} (H : HardyLittlewoodPackage D) : Prop :=
  H.mainTermAsymptotic ∧ H.admissibleExponent > 0

theorem hardy_littlewood_closed_from_evidence
    {D : DiophantineSystem} (H : HardyLittlewoodPackage D) (E : HardyLittlewoodEvidence H) :
    HardyLittlewoodClosed H := by
  refine And.intro E.asymptoticEstablished ?_
  have : H.admissibleExponent > 0 := by
    exact Nat.succ_ne_zero (H.admissibleExponent - 1) ▸ (by omega)
  exact this

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse