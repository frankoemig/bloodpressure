<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>


### References + Specifics

When doing the analysis one can find several sources for blood pressure details.
As stated already, they are all at least incomplete.

* US Core
  * Vital Signs with Qualifying Elements, 1.0.0 STU1: https://www.hl7.org/fhir/us/vitals/STU1
    * extension:bodyPosition
    * extension:sleepStatus
    * extension:excercisAssociation
    * extension:measurementSetting
    * status
    * category.coding.system = $OBSERVATION_CATEGORY
    * category.coding.code = #vital-signs
    * code.coding.system = $LOINC
    * code.coding.code = #85354-9
    * effective
    * dataAbsentReason
    * interpretation
    * bodySite
    * method
    * referenceRange
      * low
      * high
      * age: range
    * component[systolic]
      * code.coding.system = $LOINC
      * code.coding.code = #8480-6
      * valueQuantity.value = <value>
      * valueQuantity.unit = string
      * valueQuantity.system = $UCUM
      * valueQuantity.code = "mm[Hg]"
      * dataAbsentReason
      * interpretation
      * referenceRange
    * component[diastolic]
      * code.coding.system = $LOINC
      * code.coding.code = #8462-4
      * valueQuantity.value = <value>
      * valueQuantity.unit = string
      * valueQuantity.system = $UCUM
      * valueQuantity.code = "mm[Hg]"
      * dataAbsentReason
      * interpretation
      * referenceRange
  * US Core, 7.0.0 STU7 : https://build.fhir.org/ig/HL7/US-Core
    * status
    * category.coding.system = $OBSERVATION_CATEGORY
    * category.coding.code = #vital-signs
    * code.coding.system = $LOINC
    * code.coding.code = #85354-9
    * effective
    * valueQuantity
    * dataAbsentReason
    * component[systolic].code.coding.system = $LOINC
    * component[systolic].code.coding.code = #8480-6
    * component[systolic].valueQuantity.value = <value>
    * component[systolic].valueQuantity.unit = string
    * component[systolic].valueQuantity.system = $UCUM
    * component[systolic].valueQuantity.code = "mm[Hg]"
    * component[systolic].dataAbsentReason
    * component[diastolic].code.coding.system = $LOINC
    * component[diastolic].code.coding.code = #8462-4
    * component[diastolic].valueQuantity.value = <value>
    * component[diastolic].valueQuantity.unit = string
    * component[diastolic].valueQuantity.system = $UCUM
    * component[diastolic].valueQuantity.code = "mm[Hg]"
    * component[diastolic].dataAbsentReason
* DE ISiK
* DE MI-I
  * ICU 1.0.0: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.icu/1.0.0/files/769040
  * arterieller Blutdruck: https://simplifier.net/medizininformatikinitiative-modul-intensivmedizin/sd_mii_icu_arterieller_blutdruck
* DE KBV
  * 1.2.0: https://simplifier.net/packages/kbv.ita.aws/1.2.0/files/775745
    * meta-profile: fixed value
    * code.coding.system = $LOINC
    * code.coding.code = #85354-9
    * component[systolisch].code.coding.system = "**fhir.kbv.de/CodeSystem/KBV_CS_AW_Blutdruck_Typen**"
    * component[systolisch].code.coding.code = "**systolisch**"
    * component[systolisch].valueQuantity = <value>
    * component[diastolisch].code.coding.system = "**fhir.kbv.de/CodeSystem/KBV_CS_AW_Blutdruck_Typen**"
    * component[diastolisch].code.coding.code = "**diastolisch**"
    * component[diastolisch].valueQuantity = <value>
    * other attributes: forbidden
  * 4.2.0  https://simplifier.net/pvs-archivierungs-undwechselschnittstelle/kbv_pr_aw_observation_blutdruck
* openEHR CKM
