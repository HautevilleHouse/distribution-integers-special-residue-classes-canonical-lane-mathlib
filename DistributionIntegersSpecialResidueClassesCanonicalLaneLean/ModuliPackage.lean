import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ModuliPackage where
  modulus : Nat
  residueClass : Nat
  congruenceCondition : Prop
  gcdCondition : Prop

structure ModuliEvidence (M : ModuliPackage) where
  congruenceConditionClosed : M.congruenceCondition
  gcdConditionClosed : M.gcdCondition

def ModuliClosed (M : ModuliPackage) : Prop :=
  M.congruenceCondition ∧ M.gcdCondition

theorem moduli_closed_from_evidence (M : ModuliPackage) (E : ModuliEvidence M) : ModuliClosed M := by
  exact And.intro E.congruenceConditionClosed E.gcdConditionClosed

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse