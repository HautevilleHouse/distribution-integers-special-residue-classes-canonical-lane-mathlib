import DistributionIntegersSpecialResidueClassesCanonicalLaneLean.ClassNumberFormula

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ArtinReciprocityPackage where
  numberField : Type
  modulus : ℕ
  rayClassGroup : Type
  galoisGroup : Type
  isomorphism : Prop
  compatibility : Prop

def ArtinReciprocityClosed (A : ArtinReciprocityPackage) : Prop :=
  A.isomorphism ∧ A.compatibility

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse