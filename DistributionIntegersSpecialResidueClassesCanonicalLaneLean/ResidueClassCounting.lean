import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ResidueClassCountingPackage (F : ModuliPackage) where
  countingFunction : Nat -> Nat
  asymptoticEstimate : Prop
  errorTerm : Prop
  uniformEstimates : Prop

structure ResidueClassCountingEvidence {F : ModuliPackage} (R : ResidueClassCountingPackage F) where
  countingFunctionClosed : ∀ n, R.countingFunction n = 0
  asymptoticEstimateClosed : R.asymptoticEstimate
  errorTermClosed : R.errorTerm
  uniformEstimatesClosed : R.uniformEstimates

def ResidueClassCountingClosed {F : ModuliPackage} (R : ResidueClassCountingPackage F) : Prop :=
  (∀ n, R.countingFunction n = 0) ∧ R.asymptoticEstimate ∧ R.errorTerm ∧ R.uniformEstimates

theorem residue_class_counting_closed_from_evidence {F : ModuliPackage} (R : ResidueClassCountingPackage F) (E : ResidueClassCountingEvidence R) : ResidueClassCountingClosed R := by
  exact And.intro E.countingFunctionClosed (And.intro E.asymptoticEstimateClosed (And.intro E.errorTermClosed E.uniformEstimatesClosed))

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse