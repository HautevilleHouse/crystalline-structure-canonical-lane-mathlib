import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure QuasicrystalPenroseTilingPackage where
  tilingType : Type u
  inflationRule : Prop
  matchingRules : Prop
  diffractionPattern : Prop
  aperiodicOrder : Prop
  higherDimensionalEmbedding : Prop

structure QuasicrystalPenroseTilingEvidence (Q : QuasicrystalPenroseTilingPackage) where
  inflationRuleClosed : Q.inflationRule
  matchingRulesClosed : Q.matchingRules
  diffractionPatternClosed : Q.diffractionPattern
  aperiodicOrderClosed : Q.aperiodicOrder
  higherDimensionalEmbeddingClosed : Q.higherDimensionalEmbedding

def QuasicrystalPenroseTilingClosed (Q : QuasicrystalPenroseTilingPackage) : Prop :=
  Q.inflationRule ∧ Q.matchingRules ∧ Q.diffractionPattern ∧ Q.aperiodicOrder ∧ Q.higherDimensionalEmbedding

theorem quasicrystal_penrose_tiling_closed_from_evidence (Q : QuasicrystalPenroseTilingPackage) (E : QuasicrystalPenroseTilingEvidence Q) :
    QuasicrystalPenroseTilingClosed Q := by
  exact And.intro E.inflationRuleClosed
    (And.intro E.matchingRulesClosed
      (And.intro E.diffractionPatternClosed
        (And.intro E.aperiodicOrderClosed E.higherDimensionalEmbeddingClosed)))

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse