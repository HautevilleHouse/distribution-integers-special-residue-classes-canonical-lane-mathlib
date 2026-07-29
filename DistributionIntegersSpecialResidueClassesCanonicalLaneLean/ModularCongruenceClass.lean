import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ModularCongruencePackage where
  modulus : ℕ
  residueClass : ℕ
  residueClassBound : residueClass < modulus
  infiniteMembers : Prop
  closedUnderAddition : Prop
  closedUnderMultiplication : Prop

structure ModularCongruenceEvidence (M : ModularCongruencePackage) where
  residueClassBoundClosed : M.residueClassBound
  infiniteMembersClosed : M.infiniteMembers
  closedUnderAdditionClosed : M.closedUnderAddition
  closedUnderMultiplicationClosed : M.closedUnderMultiplication

def ModularCongruenceClosed (M : ModularCongruencePackage) : Prop :=
  M.residueClassBound ∧ M.infiniteMembers ∧ M.closedUnderAddition ∧ M.closedUnderMultiplication

theorem modular_congruence_closed_from_evidence (M : ModularCongruencePackage)
    (E : ModularCongruenceEvidence M) : ModularCongruenceClosed M := by
  exact And.intro E.residueClassBoundClosed
    (And.intro E.infiniteMembersClosed
      (And.intro E.closedUnderAdditionClosed E.closedUnderMultiplicationClosed))

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse
