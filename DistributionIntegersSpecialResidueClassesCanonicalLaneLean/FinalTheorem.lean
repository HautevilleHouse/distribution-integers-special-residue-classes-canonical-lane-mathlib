import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

def ConstrainedResidueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_residue_endgame (A : AdmissibleClass) : ConstrainedResidueClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse