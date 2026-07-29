import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallineStructureCanonicalLaneLean

structure XRayDiffractionPackage where
  reciprocalLattice : Type u
  structureFactorFormula : Prop
  braggCondition : Prop
  diffractionPatternIndexed : Prop
  intensityCalculation : Prop
  atomicPositionsResolved : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  structureFactorFormulaClosed : X.structureFactorFormula
  braggConditionClosed : X.braggCondition
  diffractionPatternIndexedClosed : X.diffractionPatternIndexed
  intensityCalculationClosed : X.intensityCalculation
  atomicPositionsResolvedClosed : X.atomicPositionsResolved

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.structureFactorFormula ∧ X.braggCondition ∧ X.diffractionPatternIndexed ∧
  X.intensityCalculation ∧ X.atomicPositionsResolved

theorem xray_diffraction_closed_from_evidence (X : XRayDiffractionPackage) (E : XRayDiffractionEvidence X) : XRayDiffractionClosed X := by
  exact And.intro E.structureFactorFormulaClosed
    (And.intro E.braggConditionClosed
      (And.intro E.diffractionPatternIndexedClosed
        (And.intro E.intensityCalculationClosed E.atomicPositionsResolvedClosed)))

end CrystallineStructureCanonicalLaneLean
end HautevilleHouse