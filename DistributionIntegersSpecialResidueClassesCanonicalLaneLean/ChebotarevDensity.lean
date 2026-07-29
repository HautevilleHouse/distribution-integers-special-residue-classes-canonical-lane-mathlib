import DistributionIntegersSpecialResidueClassesCanonicalLaneLean.ArtinReciprocity

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ChebotarevDensityPackage {A : ArtinReciprocityPackage} where
  primeSet : Set ℕ
  density : ℝ
  chebotarevTheorem : Prop

def ChebotarevDensityClosed {A : ArtinReciprocityPackage} (C : ChebotarevDensityPackage A) : Prop :=
  C.chebotarevTheorem

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse