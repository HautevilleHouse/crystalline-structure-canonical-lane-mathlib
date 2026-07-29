import CrystallineStructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure CrystallineObject where
  lattice : Type
  symmetryGroup : Type
  diffractionPattern : Type
  finiteType : Prop
  bravaisLatticeClassified : Prop
  spaceGroupEnumerated : Prop
  conclusion : bravaisLatticeClassified ∧ spaceGroupEnumerated

def CrystallineObjectClosed (O : CrystallineObject) : Prop :=
  O.bravaisLatticeClassified ∧ O.spaceGroupEnumerated

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse