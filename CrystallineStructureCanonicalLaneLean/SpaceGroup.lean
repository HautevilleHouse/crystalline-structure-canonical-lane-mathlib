import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure SpaceGroup where
  number : ℕ
  hmsSymbol : String
  crystalSystem : String
  pointGroupOrder : ℕ
  latticeSystem : String

def SpaceGroupClosed (S : SpaceGroup) : Prop :=
  S.number ≥ 1 ∧ S.number ≤ 230 ∧ S.pointGroupOrder ≥ 1

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse
