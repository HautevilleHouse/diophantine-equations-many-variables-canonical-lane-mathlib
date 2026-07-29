import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure DiophantineAdmittedObject where
  solutionSet : Type
  variableCount : Nat
  polynomialDegree : Nat
  integralSolutionExists : Prop
  conclusion : integralSolutionExists

structure AdmissibleClass where
  object : DiophantineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
