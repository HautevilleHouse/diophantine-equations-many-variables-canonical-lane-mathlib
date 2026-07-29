import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineManyVariablesCanonicalLaneLean

structure WeakApproximationPackage where
  equation : Type u
  primePlaces : Prop
  approximationCondition : Prop
  weakApproximationHolds : Prop

structure WeakApproximationEvidence (W : WeakApproximationPackage) where
  primePlacesClosed : W.primePlaces
  approximationConditionClosed : W.approximationCondition
  weakApproximationHoldsClosed : W.weakApproximationHolds

def WeakApproximationClosed (W : WeakApproximationPackage) : Prop :=
  W.primePlaces ∧ W.approximationCondition ∧ W.weakApproximationHolds

theorem weak_approximation_closed_from_evidence (W : WeakApproximationPackage) (E : WeakApproximationEvidence W) :
    WeakApproximationClosed W := by
  exact And.intro E.primePlacesClosed (And.intro E.approximationConditionClosed E.weakApproximationHoldsClosed)

end DiophantineManyVariablesCanonicalLaneLean
end HautevilleHouse