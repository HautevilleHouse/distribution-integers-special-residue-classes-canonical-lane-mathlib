import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure LFunctionPackage (F : ModuliPackage) where
  dirichletCharacter : Prop
  lFunctionDefined : Prop
  functionalEquation : Prop
  zeroFreeRegion : Prop

structure LFunctionEvidence {F : ModuliPackage} (L : LFunctionPackage F) where
  dirichletCharacterClosed : L.dirichletCharacter
  lFunctionDefinedClosed : L.lFunctionDefined
  functionalEquationClosed : L.functionalEquation
  zeroFreeRegionClosed : L.zeroFreeRegion

def LFunctionClosed {F : ModuliPackage} (L : LFunctionPackage F) : Prop :=
  L.dirichletCharacter ∧ L.lFunctionDefined ∧ L.functionalEquation ∧ L.zeroFreeRegion

theorem l_function_closed_from_evidence {F : ModuliPackage} (L : LFunctionPackage F) (E : LFunctionEvidence L) : LFunctionClosed L := by
  exact And.intro E.dirichletCharacterClosed (And.intro E.lFunctionDefinedClosed (And.intro E.functionalEquationClosed E.zeroFreeRegionClosed))

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse