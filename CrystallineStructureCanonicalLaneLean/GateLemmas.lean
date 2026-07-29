import CrystallineStructureCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.symmetryGroupClassified ∨ A.diffractionPatternRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  by
    exact A.gateWitness

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse