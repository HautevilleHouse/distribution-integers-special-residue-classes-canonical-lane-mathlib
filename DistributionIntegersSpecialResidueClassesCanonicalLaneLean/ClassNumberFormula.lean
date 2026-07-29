import DistributionIntegersSpecialResidueClassesCanonicalLaneLean.DirichletLFunction

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ClassNumberFormulaPackage {D : DirichletLFunctionPackage} (d : ℕ) where
  discriminant : ℤ
  classNumber : ℕ
  regulator : ℝ
  residue : ℂ
  formulaHolds : Prop

def ClassNumberFormulaClosed {D : DirichletLFunctionPackage} {d : ℕ} (C : ClassNumberFormulaPackage D d) : Prop :=
  C.formulaHolds

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse