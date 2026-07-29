import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ResidueClassModularPackage where
  modulus : ℕ
  residueClass : ℕ → Set ℤ
  chineseRemainderCompatibility : Prop
  primePowerDecomposition : Prop
  galoisActionCompatibility : Prop

structure ResidueClassModularEvidence (R : ResidueClassModularPackage) where
  chineseRemainderCompatibilityClosed : R.chineseRemainderCompatibility
  primePowerDecompositionClosed : R.primePowerDecomposition
  galoisActionCompatibilityClosed : R.galoisActionCompatibility

def ResidueClassModularClosed (R : ResidueClassModularPackage) : Prop :=
  R.chineseRemainderCompatibility ∧ R.primePowerDecomposition ∧ R.galoisActionCompatibility

theorem residue_class_modular_closed_from_evidence (R : ResidueClassModularPackage) (E : ResidueClassModularEvidence R) : ResidueClassModularClosed R := by
  exact And.intro E.chineseRemainderCompatibilityClosed (And.intro E.primePowerDecompositionClosed E.galoisActionCompatibilityClosed)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse