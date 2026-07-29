import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure DiagonalFormSolubilityPackage where
  diagonalCoefficients : List ℕ
  variableCount : ℕ
  primePowerModuli : Prop
  localSolubility : Prop
  globalSolubility : Prop

structure DiagonalFormSolubilityEvidence (D : DiagonalFormSolubilityPackage) where
  primePowerModuliClosed : D.primePowerModuli
  localSolubilityClosed : D.localSolubility
  globalSolubilityClosed : D.globalSolubility

def DiagonalFormSolubilityClosed (D : DiagonalFormSolubilityPackage) : Prop :=
  D.primePowerModuli ∧ D.localSolubility ∧ D.globalSolubility

theorem diagonal_form_solubility_closed_from_evidence
    (D : DiagonalFormSolubilityPackage)
    (E : DiagonalFormSolubilityEvidence D) :
    DiagonalFormSolubilityClosed D := by
  exact And.intro E.primePowerModuliClosed
    (And.intro E.localSolubilityClosed E.globalSolubilityClosed)

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
