import canonicalLaneMathlib.AdmissibleClass
import Mathlib.NumberTheory.ArithmeticFunction
import Mathlib.NumberTheory.DirichletCharacter

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure DirichletCharacterPackage where
  modulus : Nat
  character : DirichletCharacter ℝ modulus
  primitiveCondition : Prop
  primitiveWitness : primitiveCondition

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse