import CrystallineStructureCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure AdmissibleClass where
  crystal : CrystallineObject
  symmetryGroupClassified : Prop
  diffractionPatternRecorded : Prop
  gateWitness : symmetryGroupClassified ∨ diffractionPatternRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrystallineObjectClosed A.crystal ∧ (A.symmetryGroupClassified ∨ A.diffractionPatternRecorded)

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse