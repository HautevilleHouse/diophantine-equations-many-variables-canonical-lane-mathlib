import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure HassePrinciplePackage where
  quadraticForm : Type u
  localGlobalCompatibility : Prop
  isotropyOverQ_p : Prop
  isotropyOverQ : Prop
  weakApproximation : Prop

structure HassePrincipleEvidence (H : HassePrinciplePackage) where
  localGlobalCompatibilityClosed : H.localGlobalCompatibility
  isotropyOverQ_pClosed : H.isotropyOverQ_p
  isotropyOverQClosed : H.isotropyOverQ
  weakApproximationClosed : H.weakApproximation

def HassePrincipleClosed (H : HassePrinciplePackage) : Prop :=
  H.localGlobalCompatibility ∧ H.isotropyOverQ_p ∧ H.isotropyOverQ ∧ H.weakApproximation

theorem hasse_principle_closed_from_evidence (H : HassePrinciplePackage)
    (E : HassePrincipleEvidence H) : HassePrincipleClosed H := by
  exact And.intro E.localGlobalCompatibilityClosed
    (And.intro E.isotropyOverQ_pClosed
      (And.intro E.isotropyOverQClosed E.weakApproximationClosed))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
