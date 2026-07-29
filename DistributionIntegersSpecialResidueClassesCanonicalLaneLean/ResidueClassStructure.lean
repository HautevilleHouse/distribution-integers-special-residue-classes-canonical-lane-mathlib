import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ResidueClass where
  modulus : Nat
  residue : Nat
  congruenceCondition : residue < modulus

def ResidueClass.admissible (r : ResidueClass) : Prop :=
  r.modulus > 0

structure SpecialResidueClass extends ResidueClass where
  special : Prop
  specialClosed : special

structure ResidueClassDistribution where
  residueClass : ResidueClass
  distributionType : Prop
  densityEstimate : Prop
  distributionTypeClosed : distributionType
  densityEstimateClosed : densityEstimate

def ResidueClassDistributionClosed (D : ResidueClassDistribution) : Prop :=
  D.distributionType ∧ D.densityEstimate

theorem residue_class_distribution_closed_from_evidence
    (D : ResidueClassDistribution) : ResidueClassDistributionClosed D :=
  And.intro D.distributionTypeClosed D.densityEstimateClosed

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse