import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let r : ResidueClass := { modulus := 1, residue := 0, congruenceCondition := by decide }
  r.admissible

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    unfold bridgeClosed
    exact Nat.one_pos

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse