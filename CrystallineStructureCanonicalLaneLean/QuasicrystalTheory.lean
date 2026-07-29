import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure QuasicrystalPackage where
  aperiodicTiling : Prop
  mathematicalDiffractionDefined : Prop
  penroseTilingModel : Prop
  higherDimensionalEmbedding : Prop
  noncrystallographicSymmetry : Prop

structure QuasicrystalEvidence (Q : QuasicrystalPackage) where
  aperiodicTilingClosed : Q.aperiodicTiling
  mathematicalDiffractionDefinedClosed : Q.mathematicalDiffractionDefined
  penroseTilingModelClosed : Q.penroseTilingModel
  higherDimensionalEmbeddingClosed : Q.higherDimensionalEmbedding
  noncrystallographicSymmetryClosed : Q.noncrystallographicSymmetry

def QuasicrystalClosed (Q : QuasicrystalPackage) : Prop :=
  Q.aperiodicTiling ∧ Q.mathematicalDiffractionDefined ∧ Q.penroseTilingModel ∧
  Q.higherDimensionalEmbedding ∧ Q.noncrystallographicSymmetry

theorem quasicrystal_closed_from_evidence (Q : QuasicrystalPackage) (E : QuasicrystalEvidence Q) : QuasicrystalClosed Q := by
  exact And.intro E.aperiodicTilingClosed
    (And.intro E.mathematicalDiffractionDefinedClosed
      (And.intro E.penroseTilingModelClosed
        (And.intro E.higherDimensionalEmbeddingClosed E.noncrystallographicSymmetryClosed)))

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse