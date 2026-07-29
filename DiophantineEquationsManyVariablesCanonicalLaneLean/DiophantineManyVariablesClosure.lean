import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineManyVariablesCanonicalLaneLean

def DiophantineAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem diophantine_admissible_class_from_bridge_gate (A : AdmissibleClass) :
    DiophantineAdmissibleClass A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiophantineManyVariablesCanonicalLaneLean
end HautevilleHouse