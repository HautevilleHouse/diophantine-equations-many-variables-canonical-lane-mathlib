import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure HardyLittlewoodPackage where
  exponentialSum : Type u
  majorArcs : Type v
  minorArcs : Type w
  singularSeries : Prop
  singularIntegral : Prop
  asymptoticFormula : Prop
  majorArcsContribution : Prop
  minorArcsBound : Prop
  admissibleResidueClasses : Prop
  levelOfDistribution : Prop
  circleMethodClosed : Prop

structure HardyLittlewoodEvidence (H : HardyLittlewoodPackage) where
  singularSeriesClosed : H.singularSeries
  singularIntegralClosed : H.singularIntegral
  asymptoticFormulaClosed : H.asymptoticFormula
  majorArcsContributionClosed : H.majorArcsContribution
  minorArcsBoundClosed : H.minorArcsBound
  admissibleResidueClassesClosed : H.admissibleResidueClasses
  levelOfDistributionClosed : H.levelOfDistribution

def HardyLittlewoodClosed (H : HardyLittlewoodPackage) : Prop :=
  H.singularSeries ∧ H.singularIntegral ∧ H.asymptoticFormula ∧
  H.majorArcsContribution ∧ H.minorArcsBound ∧
  H.admissibleResidueClasses ∧ H.levelOfDistribution

theorem hardy_littlewood_closed_from_evidence (H : HardyLittlewoodPackage)
    (E : HardyLittlewoodEvidence H) : HardyLittlewoodClosed H := by
  exact And.intro E.singularSeriesClosed
    (And.intro E.singularIntegralClosed
      (And.intro E.asymptoticFormulaClosed
        (And.intro E.majorArcsContributionClosed
          (And.intro E.minorArcsBoundClosed
            (And.intro E.admissibleResidueClassesClosed
              E.levelOfDistributionClosed)))))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse