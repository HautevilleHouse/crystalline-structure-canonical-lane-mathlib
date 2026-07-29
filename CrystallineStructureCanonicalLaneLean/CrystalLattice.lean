import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure CrystalLattice where
  latticeVectors : List (ℝ × ℝ × ℝ)
  bravaisType : String
  primitiveCellVolume : ℝ
  symmetryGroup : String
  centeringType : String

def CrystalLatticeClosed (L : CrystalLattice) : Prop :=
  L.primitiveCellVolume > 0 ∧ L.bravaisType ≠ ""

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse
