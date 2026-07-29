import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure QuadraticResidueDistributionPackage where
  prime : ℕ
  legendreSymbolComputed : Prop
  quadraticReciprocityApplied : Prop
  distributionBalance : Prop

structure QuadraticResidueDistributionEvidence (Q : QuadraticResidueDistributionPackage) where
  legendreSymbolComputedClosed : Q.legendreSymbolComputed
  quadraticReciprocityAppliedClosed : Q.quadraticReciprocityApplied
  distributionBalanceClosed : Q.distributionBalance

def QuadraticResidueDistributionClosed (Q : QuadraticResidueDistributionPackage) : Prop :=
  Q.legendreSymbolComputed ∧ Q.quadraticReciprocityApplied ∧ Q.distributionBalance

theorem quadratic_residue_distribution_closed_from_evidence (Q : QuadraticResidueDistributionPackage) (E : QuadraticResidueDistributionEvidence Q) : QuadraticResidueDistributionClosed Q := by
  exact And.intro E.legendreSymbolComputedClosed (And.intro E.quadraticReciprocityAppliedClosed E.distributionBalanceClosed)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse