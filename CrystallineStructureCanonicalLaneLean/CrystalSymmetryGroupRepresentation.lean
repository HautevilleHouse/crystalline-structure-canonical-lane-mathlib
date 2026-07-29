import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure CrystalSymmetryGroupRepresentationPackage where
  pointGroup : Type u
  spaceGroup : Type v
  representation : Prop
  characterTable : Prop
  irreducibleReps : Prop
  wyckoffPositions : Prop
  siteSymmetry : Prop

structure CrystalSymmetryGroupRepresentationEvidence (G : CrystalSymmetryGroupRepresentationPackage) where
  representationClosed : G.representation
  characterTableClosed : G.characterTable
  irreducibleRepsClosed : G.irreducibleReps
  wyckoffPositionsClosed : G.wyckoffPositions
  siteSymmetryClosed : G.siteSymmetry

def CrystalSymmetryGroupRepresentationClosed (G : CrystalSymmetryGroupRepresentationPackage) : Prop :=
  G.representation ∧ G.characterTable ∧ G.irreducibleReps ∧ G.wyckoffPositions ∧ G.siteSymmetry

theorem crystal_symmetry_group_representation_closed_from_evidence (G : CrystalSymmetryGroupRepresentationPackage) (E : CrystalSymmetryGroupRepresentationEvidence G) :
    CrystalSymmetryGroupRepresentationClosed G := by
  exact And.intro E.representationClosed
    (And.intro E.characterTableClosed
      (And.intro E.irreducibleRepsClosed
        (And.intro E.wyckoffPositionsClosed E.siteSymmetryClosed)))

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse