import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure SymmetryOperation where
  rotationAxis : Option (ℝ × ℝ × ℝ)
  rotationAngle : ℝ
  translationVector : ℝ × ℝ × ℝ
  isMirror : Bool
  isInversion : Bool

def SymmetryOperationClosed (S : SymmetryOperation) : Prop :=
  ((S.rotationAngle % (2 * π)) = 0) ∨ S.isMirror ∨ S.isInversion

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse
