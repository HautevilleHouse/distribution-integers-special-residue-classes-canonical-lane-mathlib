import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecialResidueClassesCanonicalLaneLean

structure QuadraticResiduePackage where
  prime : ℕ
  quadraticResidueSet : Set ℕ
  quadraticNonresidueSet : Set ℕ
  legendreSymbol : ℕ → ℤ
  multiplicativeProperty : Prop
  quadraticReciprocity : Prop

structure QuadraticResidueEvidence (Q : QuadraticResiduePackage) where
  multiplicativePropertyClosed : Q.multiplicativeProperty
  quadraticReciprocityClosed : Q.quadraticReciprocity

def QuadraticResidueClosed (Q : QuadraticResiduePackage) : Prop :=
  Q.multiplicativeProperty ∧ Q.quadraticReciprocity

theorem quadratic_residue_closed_from_evidence (Q : QuadraticResiduePackage)
    (E : QuadraticResidueEvidence Q) : QuadraticResidueClosed Q := by
  exact And.intro E.multiplicativePropertyClosed E.quadraticReciprocityClosed

end DistributionIntegersSpecialResidueClassesCanonicalLaneLean
end HautevilleHouse
