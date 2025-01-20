library HypertensionScreening version '1.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers
include CDSCommon version '1.0.0' called CDSCommon

context Patient

define "Patient Age":
  AgeInYearsAt(Today()) >= 18

define "Has Recent OBPM":
  exists(
    [Observation: "Blood Pressure"] BP
      where BP.effectiveDateTime >= Today() - 2 years
  )

define "Needs Blood Pressure Measurement":
  "Patient Age" and not "Has Recent OBPM"