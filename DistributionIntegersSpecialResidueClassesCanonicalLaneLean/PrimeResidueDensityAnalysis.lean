import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure PrimeResidueDensityPackage where
  arithmeticProgression : ℕ → ℕ
  chebotarevDensityApplied : Prop
  primesInResidueClassCounted : Prop
  errorTermBound : Prop

structure PrimeResidueDensityEvidence (P : PrimeResidueDensityPackage) where
  chebotarevDensityAppliedClosed : P.chebotarevDensityApplied
  primesInResidueClassCountedClosed : P.primesInResidueClassCounted
  errorTermBoundClosed : P.errorTermBound

def PrimeResidueDensityClosed (P : PrimeResidueDensityPackage) : Prop :=
  P.chebotarevDensityApplied ∧ P.primesInResidueClassCounted ∧ P.errorTermBound

theorem prime_residue_density_closed_from_evidence (P : PrimeResidueDensityPackage) (E : PrimeResidueDensityEvidence P) : PrimeResidueDensityClosed P := by
  exact And.intro E.chebotarevDensityAppliedClosed (And.intro E.primesInResidueClassCountedClosed E.errorTermBoundClosed)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse