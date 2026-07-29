import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesCanonicalLaneLean

structure BirchSwinnertonDyerConjecturePackage where
  ellipticCurve : Type u
  lFunction : Type v
  analyticRank : Prop
  algebraicRank : Prop
  tateShafarevichGroup : Prop
  equalityOfRanks : Prop
  leadingCoefficientFormula : Prop

structure BirchSwinnertonDyerConjectureEvidence (B : BirchSwinnertonDyerConjecturePackage) where
  analyticRankClosed : B.analyticRank
  algebraicRankClosed : B.algebraicRank
  tateShafarevichGroupClosed : B.tateShafarevichGroup
  equalityOfRanksClosed : B.equalityOfRanks
  leadingCoefficientFormulaClosed : B.leadingCoefficientFormula

def BirchSwinnertonDyerConjectureClosed (B : BirchSwinnertonDyerConjecturePackage) : Prop :=
  B.analyticRank ∧ B.algebraicRank ∧ B.tateShafarevichGroup ∧
  B.equalityOfRanks ∧ B.leadingCoefficientFormula

theorem birch_swinnerton_dyer_conjecture_closed_from_evidence
    (B : BirchSwinnertonDyerConjecturePackage)
    (E : BirchSwinnertonDyerConjectureEvidence B) : BirchSwinnertonDyerConjectureClosed B := by
  exact And.intro E.analyticRankClosed
    (And.intro E.algebraicRankClosed
      (And.intro E.tateShafarevichGroupClosed
        (And.intro E.equalityOfRanksClosed E.leadingCoefficientFormulaClosed)))

end DiophantineEquationsManyVariablesCanonicalLaneLean
end HautevilleHouse
