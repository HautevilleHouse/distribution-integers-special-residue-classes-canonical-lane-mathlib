import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure ArtinSymbolPackage (F : ModuliPackage) where
  field : Type u
  residueCharacter : Type v
  artinSymbolDefined : Prop
  chebotarevDensityTheorem : Prop

structure ArtinSymbolEvidence {F : ModuliPackage} (A : ArtinSymbolPackage F) where
  artinSymbolDefinedClosed : A.artinSymbolDefined
  chebotarevDensityTheoremClosed : A.chebotarevDensityTheorem

def ArtinSymbolClosed {F : ModuliPackage} (A : ArtinSymbolPackage F) : Prop :=
  A.artinSymbolDefined ∧ A.chebotarevDensityTheorem

theorem artin_symbol_closed_from_evidence {F : ModuliPackage} (A : ArtinSymbolPackage F) (E : ArtinSymbolEvidence A) : ArtinSymbolClosed A := by
  exact And.intro E.artinSymbolDefinedClosed E.chebotarevDensityTheoremClosed

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse