import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure BravaisLatticeClassificationPackage where
  latticeType : Type u
  centering : Prop
  unitCellDimensions : Prop
  latticeParameters : Prop
  primitiveVectors : Prop
  conventionalCell : Prop

structure BravaisLatticeClassificationEvidence (L : BravaisLatticeClassificationPackage) where
  centeringClosed : L.centering
  unitCellDimensionsClosed : L.unitCellDimensions
  latticeParametersClosed : L.latticeParameters
  primitiveVectorsClosed : L.primitiveVectors
  conventionalCellClosed : L.conventionalCell

def BravaisLatticeClassificationClosed (L : BravaisLatticeClassificationPackage) : Prop :=
  L.centering ∧ L.unitCellDimensions ∧ L.latticeParameters ∧ L.primitiveVectors ∧ L.conventionalCell

theorem bravais_lattice_classification_closed_from_evidence (L : BravaisLatticeClassificationPackage) (E : BravaisLatticeClassificationEvidence L) :
    BravaisLatticeClassificationClosed L := by
  exact And.intro E.centeringClosed
    (And.intro E.unitCellDimensionsClosed
      (And.intro E.latticeParametersClosed
        (And.intro E.primitiveVectorsClosed E.conventionalCellClosed)))

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse