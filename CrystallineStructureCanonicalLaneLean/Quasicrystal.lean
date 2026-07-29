import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure Quasicrystal where
  dimension : ℕ
  icosahedralSymmetry : Bool
  diffractionPatternType : String
  aperiodicOrder : String
  tilingType : String

def QuasicrystalClosed (Q : Quasicrystal) : Prop :=
  Q.dimension = 3 ∨ Q.dimension = 2

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse
