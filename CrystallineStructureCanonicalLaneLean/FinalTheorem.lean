import canonicalLaneMathlib.AdmissibleClass
import CrystallineStructureCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

def ConstrainedCrystallineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_crystalline_endgame (A : AdmissibleClass) :
    ConstrainedCrystallineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse