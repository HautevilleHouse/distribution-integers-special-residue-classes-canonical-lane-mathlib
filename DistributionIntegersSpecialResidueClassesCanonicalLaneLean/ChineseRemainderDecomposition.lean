import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ChineseRemainderPackage where
  moduli : List ℕ
  pairwiseCoprime : Prop
  systemSolver : ℕ → ℕ
  uniqueSolutionModProduct : Prop

structure ChineseRemainderEvidence (C : ChineseRemainderPackage) where
  pairwiseCoprimeClosed : C.pairwiseCoprime
  uniqueSolutionModProductClosed : C.uniqueSolutionModProduct

def ChineseRemainderClosed (C : ChineseRemainderPackage) : Prop :=
  C.pairwiseCoprime ∧ C.uniqueSolutionModProduct

theorem chinese_remainder_closed_from_evidence (C : ChineseRemainderPackage)
    (E : ChineseRemainderEvidence C) : ChineseRemainderClosed C := by
  exact And.intro E.pairwiseCoprimeClosed E.uniqueSolutionModProductClosed

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse
