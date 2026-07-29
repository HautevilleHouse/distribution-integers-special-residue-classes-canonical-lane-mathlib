import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure DirichletPrimeDistributionPackage where
  modulus : ℕ
  residueClass : ℕ
  progressionSet : Set ℕ
  infinitelyManyPrimes : Prop
  primeDensity : Prop
  analyticContinuation : Prop

structure DirichletPrimeDistributionEvidence (D : DirichletPrimeDistributionPackage) where
  infinitelyManyPrimesClosed : D.infinitelyManyPrimes
  primeDensityClosed : D.primeDensity
  analyticContinuationClosed : D.analyticContinuation

def DirichletPrimeDistributionClosed (D : DirichletPrimeDistributionPackage) : Prop :=
  D.infinitelyManyPrimes ∧ D.primeDensity ∧ D.analyticContinuation

theorem dirichlet_prime_distribution_closed_from_evidence (D : DirichletPrimeDistributionPackage)
    (E : DirichletPrimeDistributionEvidence D) : DirichletPrimeDistributionClosed D := by
  exact And.intro E.infinitelyManyPrimesClosed
    (And.intro E.primeDensityClosed E.analyticContinuationClosed)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse
