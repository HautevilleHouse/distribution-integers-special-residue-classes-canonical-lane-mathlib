import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure SatoTateDistributionPackage (F : ModuliPackage) where
  ellipticCurve : Type u
  traceDistribution : Prop
  satoTateLaw : Prop
  equidistribution : Prop

structure SatoTateDistributionEvidence {F : ModuliPackage} (S : SatoTateDistributionPackage F) where
  traceDistributionClosed : S.traceDistribution
  satoTateLawClosed : S.satoTateLaw
  equidistributionClosed : S.equidistribution

def SatoTateDistributionClosed {F : ModuliPackage} (S : SatoTateDistributionPackage F) : Prop :=
  S.traceDistribution ∧ S.satoTateLaw ∧ S.equidistribution

theorem sato_tate_distribution_closed_from_evidence {F : ModuliPackage} (S : SatoTateDistributionPackage F) (E : SatoTateDistributionEvidence S) : SatoTateDistributionClosed S := by
  exact And.intro E.traceDistributionClosed (And.intro E.satoTateLawClosed E.equidistributionClosed)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse