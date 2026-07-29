import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure BravaisLatticePackage where
  latticeType : String
  unitCellParams : String
  centeringType : String
  primitiveVectors : Prop
  conventionalCellDefined : Prop
  crystalFamilyClassified : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  primitiveVectorsClosed : B.primitiveVectors
  conventionalCellDefinedClosed : B.conventionalCellDefined
  crystalFamilyClassifiedClosed : B.crystalFamilyClassified

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.primitiveVectors ∧ B.conventionalCellDefined ∧ B.crystalFamilyClassified

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.primitiveVectorsClosed
    (And.intro E.conventionalCellDefinedClosed E.crystalFamilyClassifiedClosed)

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse