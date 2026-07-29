import DistributionIntegersSpecialResidueClassesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure DirichletLFunctionPackage where
  modulus : ℕ
  character : ℕ → ℂ
  lFunctionValue : ℂ → ℂ
  analyticContinuation : Prop
  functionalEquation : Prop
  trivialZeros : Prop

def DirichletLFunctionClosed (D : DirichletLFunctionPackage) : Prop :=
  D.analyticContinuation ∧ D.functionalEquation ∧ D.trivialZeros

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse