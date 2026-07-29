import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure SymmetryGroupPackage where
  crystallographicGroup : Type u
  spaceGroup : Type v
  bravaisLattice : Type w
  pointGroup : Type x
  latticeSystemClassified : Prop
  centeringTypeDetermined : Prop
  spaceGroupNumber : Nat

structure SymmetryGroupEvidence (S : SymmetryGroupPackage) where
  latticeSystemClassifiedClosed : S.latticeSystemClassified
  centeringTypeDeterminedClosed : S.centeringTypeDetermined

def SymmetryGroupClosed (S : SymmetryGroupPackage) : Prop :=
  S.latticeSystemClassified ∧ S.centeringTypeDetermined

theorem symmetry_group_closed_from_evidence (S : SymmetryGroupPackage) (E : SymmetryGroupEvidence S) : SymmetryGroupClosed S := by
  exact And.intro E.latticeSystemClassifiedClosed E.centeringTypeDeterminedClosed

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse