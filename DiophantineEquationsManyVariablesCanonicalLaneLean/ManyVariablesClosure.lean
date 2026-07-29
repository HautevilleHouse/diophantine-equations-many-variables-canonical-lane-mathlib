import DiophantineEquationsManyVariablesCanonicalLaneLean.CircleMethod

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

def DiophantineAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem diophantine_admissible_endgame (A : AdmissibleClass) :
    DiophantineAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse