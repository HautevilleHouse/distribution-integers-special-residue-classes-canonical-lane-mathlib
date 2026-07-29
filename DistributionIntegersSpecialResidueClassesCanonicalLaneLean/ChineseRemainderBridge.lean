import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Nat.ModEq

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ChineseRemainderSystem where
  moduli : List Nat
  residues : List Nat
  moduliCoprime : ∀ (a b : Nat), a ∈ moduli → b ∈ moduli → a ≠ b → Nat.Coprime a b
  pairwiseConsistency : ∀ (i j : Nat), i < moduli.length → j < residues.length → residues.get? i = residues.get? j := by
    intro i j hi hj
    simp

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse