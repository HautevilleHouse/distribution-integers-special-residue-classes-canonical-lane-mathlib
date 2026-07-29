import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure PrimitiveResidueClassSystem where
  modulus : Nat
  residueClass : Nat
  modulusPos : modulus > 0
  residueReduced : residueClass % modulus = residueClass
  residueCoprime : Nat.Coprime residueClass modulus

def residueSystemWitness (R : PrimitiveResidueClassSystem) : Prop :=
  R.modulusPos ∧ R.residueReduced ∧ R.residueCoprime

theorem residue_system_witness_holds (R : PrimitiveResidueClassSystem) :
    residueSystemWitness R := by
  refine And.intro R.modulusPos (And.intro R.residueReduced R.residueCoprime)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse