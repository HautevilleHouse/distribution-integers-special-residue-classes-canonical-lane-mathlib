import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure FiniteFieldResiduePackage where
  fieldOrder : ℕ → ℕ
  multiplicativeGroupCyclic : Prop
  residueCharacterTable : Prop
  weilBoundsApplied : Prop

structure FiniteFieldResidueEvidence (F : FiniteFieldResiduePackage) where
  multiplicativeGroupCyclicClosed : F.multiplicativeGroupCyclic
  residueCharacterTableClosed : F.residueCharacterTable
  weilBoundsAppliedClosed : F.weilBoundsApplied

def FiniteFieldResidueClosed (F : FiniteFieldResiduePackage) : Prop :=
  F.multiplicativeGroupCyclic ∧ F.residueCharacterTable ∧ F.weilBoundsApplied

theorem finite_field_residue_closed_from_evidence (F : FiniteFieldResiduePackage) (E : FiniteFieldResidueEvidence F) : FiniteFieldResidueClosed F := by
  exact And.intro E.multiplicativeGroupCyclicClosed (And.intro E.residueCharacterTableClosed E.weilBoundsAppliedClosed)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse