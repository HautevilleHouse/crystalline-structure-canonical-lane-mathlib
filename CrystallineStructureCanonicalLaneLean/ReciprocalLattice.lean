import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure ReciprocalLattice where
  realLattice : CrystalLattice
  reciprocalVectors : List (ℝ × ℝ × ℝ)
  brillouinZoneType : String
  volume : ℝ

def ReciprocalLatticeVolume (L : CrystalLattice) : ℝ :=
  (2 * π)^3 / L.primitiveCellVolume

def ReciprocalLatticeClosed (R : ReciprocalLattice) : Prop :=
  R.volume > 0 ∧ R.brillouinZoneType ≠ ""

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse
