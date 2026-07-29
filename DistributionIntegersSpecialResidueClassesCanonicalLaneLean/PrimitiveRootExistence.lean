import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure PrimitiveRootPackage where
  prime : ℕ
  primitiveRootExistence : Prop
  orderOfRoot : ℕ
  generatorOfUnitGroup : Prop

structure PrimitiveRootEvidence (P : PrimitiveRootPackage) where
  primitiveRootExistenceClosed : P.primitiveRootExistence
  generatorOfUnitGroupClosed : P.generatorOfUnitGroup

def PrimitiveRootClosed (P : PrimitiveRootPackage) : Prop :=
  P.primitiveRootExistence ∧ P.generatorOfUnitGroup

theorem primitive_root_closed_from_evidence (P : PrimitiveRootPackage)
    (E : PrimitiveRootEvidence P) : PrimitiveRootClosed P := by
  exact And.intro E.primitiveRootExistenceClosed E.generatorOfUnitGroupClosed

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse
