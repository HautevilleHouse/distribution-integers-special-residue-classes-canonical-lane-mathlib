import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure PrimeDistributionPackage (F : ModuliPackage) where
  residueFieldSieve : Prop
  sievedSet : Nat -> Prop
  specialResidueClass : Nat
  modulo : Nat
  zetaFunctionComponent : Prop

structure PrimeDistributionEvidence {F : ModuliPackage} (P : PrimeDistributionPackage F) where
  residueFieldSieveClosed : P.residueFieldSieve
  sievedSetClosed : ∀ n, P.sievedSet n
  specialResidueClassClosed : P.specialResidueClass = 1
  moduloClosed : P.modulo = 4
  zetaFunctionComponentClosed : P.zetaFunctionComponent

def PrimeDistributionClosed {F : ModuliPackage} (P : PrimeDistributionPackage F) : Prop :=
  P.residueFieldSieve ∧ (∀ n, P.sievedSet n) ∧ P.specialResidueClass = 1 ∧ P.modulo = 4 ∧ P.zetaFunctionComponent

theorem prime_distribution_closed_from_evidence {F : ModuliPackage} (P : PrimeDistributionPackage F) (E : PrimeDistributionEvidence P) : PrimeDistributionClosed P := by
  exact And.intro E.residueFieldSieveClosed (And.intro E.sievedSetClosed (And.intro E.specialResidueClassClosed (And.intro E.moduloClosed E.zetaFunctionComponentClosed)))

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse