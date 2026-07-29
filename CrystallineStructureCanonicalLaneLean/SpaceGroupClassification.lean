import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure SpaceGroupClassificationPackage where
  spaceGroup : Type u
  latticeSystem : Type v
  symmetryOperations : Prop
  bravaisClass : Prop
  centeringType : Prop
  internationalSymbol : Prop
  crystalClass : Prop

structure SpaceGroupClassificationEvidence (C : SpaceGroupClassificationPackage) where
  symmetryOperationsClosed : C.symmetryOperations
  bravaisClassClosed : C.bravaisClass
  centeringTypeClosed : C.centeringType
  internationalSymbolClosed : C.internationalSymbol
  crystalClassClosed : C.crystalClass

def SpaceGroupClassificationClosed (C : SpaceGroupClassificationPackage) : Prop :=
  C.symmetryOperations ∧ C.bravaisClass ∧ C.centeringType ∧ C.internationalSymbol ∧ C.crystalClass

theorem space_group_classification_closed_from_evidence (C : SpaceGroupClassificationPackage) (E : SpaceGroupClassificationEvidence C) :
    SpaceGroupClassificationClosed C := by
  exact And.intro E.symmetryOperationsClosed
    (And.intro E.bravaisClassClosed
      (And.intro E.centeringTypeClosed
        (And.intro E.internationalSymbolClosed E.crystalClassClosed)))

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse