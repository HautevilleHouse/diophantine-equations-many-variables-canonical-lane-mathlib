import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure VinogradovMeanValuePackage where
  meanValue : Type u
  polynomialExponentialSum : Type v
  decouplingInequality : Prop
  mainConjecture : Prop
  optimalExponent : Prop
  translationInvariance : Prop
  applicationToWaring : Prop

structure VinogradovMeanValueEvidence (V : VinogradovMeanValuePackage) where
  decouplingInequalityClosed : V.decouplingInequality
  mainConjectureClosed : V.mainConjecture
  optimalExponentClosed : V.optimalExponent
  translationInvarianceClosed : V.translationInvariance
  applicationToWaringClosed : V.applicationToWaring

def VinogradovMeanValueClosed (V : VinogradovMeanValuePackage) : Prop :=
  V.decouplingInequality ∧ V.mainConjecture ∧
  V.optimalExponent ∧ V.translationInvariance ∧ V.applicationToWaring

theorem vinogradov_mean_value_closed_from_evidence
    (V : VinogradovMeanValuePackage) (E : VinogradovMeanValueEvidence V) :
    VinogradovMeanValueClosed V := by
  exact And.intro E.decouplingInequalityClosed
    (And.intro E.mainConjectureClosed
      (And.intro E.optimalExponentClosed
        (And.intro E.translationInvarianceClosed E.applicationToWaringClosed)))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse