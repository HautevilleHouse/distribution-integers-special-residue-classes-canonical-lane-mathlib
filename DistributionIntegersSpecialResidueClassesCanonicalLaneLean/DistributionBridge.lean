import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | PrimitiveResidueClassSystem m r _ _ _ => m > 0 ∧ r < m
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  match h : A.object with
  | PrimitiveResidueClassSystem m r hpos hred hcop =>
    exact And.intro hpos (by
      have := hred
      simpa [Nat.mod_lt, hpos] using this)
  | _ => exact False.elim (by
    have : A.object = A.object := rfl
    have h' : A.object ≠ A.object := by
      intro h_eq
      have : ¬ (∀ (m : ℕ) (r : ℕ), A.object = PrimitiveResidueClassSystem m r hpos hred hcop) := by
        intro h_all
        apply h_all
      exact this (fun m r => h_eq.symm)
    exact h' rfl)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse