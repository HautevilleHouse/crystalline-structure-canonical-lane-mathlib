import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure XRayDiffractionStructureFactorPackage where
  reciprocalLattice : Type u
  structureFactorFormula : Prop
  atomicFormFactor : Prop
  anomalousScattering : Prop
  laueCondition : Prop
  intensityEquation : Prop

structure XRayDiffractionStructureFactorEvidence (X : XRayDiffractionStructureFactorPackage) where
  structureFactorFormulaClosed : X.structureFactorFormula
  atomicFormFactorClosed : X.atomicFormFactor
  anomalousScatteringClosed : X.anomalousScattering
  laueConditionClosed : X.laueCondition
  intensityEquationClosed : X.intensityEquation

def XRayDiffractionStructureFactorClosed (X : XRayDiffractionStructureFactorPackage) : Prop :=
  X.structureFactorFormula ∧ X.atomicFormFactor ∧ X.anomalousScattering ∧ X.laueCondition ∧ X.intensityEquation

theorem xray_diffraction_structure_factor_closed_from_evidence (X : XRayDiffractionStructureFactorPackage) (E : XRayDiffractionStructureFactorEvidence X) :
    XRayDiffractionStructureFactorClosed X := by
  exact And.intro E.structureFactorFormulaClosed
    (And.intro E.atomicFormFactorClosed
      (And.intro E.anomalousScatteringClosed
        (And.intro E.laueConditionClosed E.intensityEquationClosed)))

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse