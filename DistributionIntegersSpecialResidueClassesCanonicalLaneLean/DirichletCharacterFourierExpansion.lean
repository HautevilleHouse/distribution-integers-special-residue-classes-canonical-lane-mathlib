import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure DirichletCharacterFourierPackage where
  conductor : ℕ
  characterTable : Prop
  gaussSumComputed : Prop
  functionalEquationProved : Prop

structure DirichletCharacterFourierEvidence (D : DirichletCharacterFourierPackage) where
  characterTableClosed : D.characterTable
  gaussSumComputedClosed : D.gaussSumComputed
  functionalEquationProvedClosed : D.functionalEquationProved

def DirichletCharacterFourierClosed (D : DirichletCharacterFourierPackage) : Prop :=
  D.characterTable ∧ D.gaussSumComputed ∧ D.functionalEquationProved

theorem dirichlet_character_fourier_closed_from_evidence (D : DirichletCharacterFourierPackage) (E : DirichletCharacterFourierEvidence D) : DirichletCharacterFourierClosed D := by
  exact And.intro E.characterTableClosed (And.intro E.gaussSumComputedClosed E.functionalEquationProvedClosed)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse