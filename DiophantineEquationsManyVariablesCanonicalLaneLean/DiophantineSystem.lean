import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure DiophantineEquation where
  variables : Nat
  degrees : List Nat
  coefficients : List ℤ
  homogeneous : Bool

structure DiophantineSystem where
  equations : List DiophantineEquation
  commonVariables : Nat
  baseField : Type
  baseFieldChar : Prop
  baseFieldAlgebraicallyClosed : Prop

structure DiophantineEvidence (D : DiophantineSystem) where
  equationsConsistent : D.equations ≠ []
  commonVariablesPositive : D.commonVariables > 0

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse