import CrystallineStructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystallineObjectClosed A.crystal

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  by
    exact A.crystal.conclusion

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse