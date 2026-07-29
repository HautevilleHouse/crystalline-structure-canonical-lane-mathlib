import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure XRayDiffraction where
  wavelength : ℝ
  incidentAngle : ℝ
  millerIndices : ℕ × ℕ × ℕ
  braggAngle : ℝ
  intensity : ℝ

def BraggsLaw (d : ℝ) (θ : ℝ) (λ : ℝ) : Prop :=
  2 * d * Real.sin θ = λ

def XRayDiffractionClosed (X : XRayDiffraction) : Prop :=
  X.wavelength > 0 ∧ X.intensity ≥ 0

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse
