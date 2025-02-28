Logical: BloodPressureAverage
Parent: Base
Id: BloodPressureAverage
Title: "Average Blood Pressure LM"
Description: "This is the Logical Model for **Average Blood Pressure**"

* ^version = "0.1.0"
* ^abstract = false
* ^type = "http://bloodpressure.oemig.de/fhir/StructureDefinition/BloodPressureAverage"
* . ^definition = "Blood Pressure"

* insert HeaderDetailRules

* systolicPressure 0..1 SU BackboneElement "systolic blood pressure" "Peak systemic arterial blood pressure - measured in systolic or contraction phase of the heart cycle."
  * code 0..1 CodeableConcept "code, in case of a precoordinated concept"
  * code from http://bloodpressure.oemig.de/fhir/ValueSet/us-core-systolic-blood-pressure-code (extensible)
  * value 1..1 positiveInt "value"
    * obeys shall-be-under-1000-mmHg
  * unit 1..1 CodeableConcept "units"
  * unit from http://bloodpressure.oemig.de/fhir/ValueSet/BPunits (required)
  * dataAbsentReason 0..1 CodeableConcept "Why the component result is missing"
  * dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
  * interpretation 0..1 CodeableConcept "interpretation"
  * interpretation from http://bloodpressure.oemig.de/fhir/ValueSet/Interpretation (required)
  * range 0..* BackboneElement "reference range"
    * low 0..1 integer "Low Range, if relevant"
    * high 0..1 integer "High Range, if relevant"
    * age 0..1 Range "Applicable age range, if relevant"
    * text 0..1 string "Text based reference range in an observation"

* diastolicPressure 0..1 SU BackboneElement "diastolic blood pressure" "Minimum systemic arterial blood pressure - measured in the diastolic or relaxation phase of the heart cycle."
  * code 0..1 CodeableConcept "code, in case of a precoordinated concept"
  * code from http://bloodpressure.oemig.de/fhir/ValueSet/us-core-diastolic-blood-pressure-code (extensible)
  * value 1..1 positiveInt "value"
    * obeys shall-be-under-1000-mmHg
  * unit 1..1 CodeableConcept "units"
  * unit from http://bloodpressure.oemig.de/fhir/ValueSet/BPunits (required)
  * dataAbsentReason 0..1 CodeableConcept "Why the component result is missing"
  * dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
  * interpretation 0..1 CodeableConcept "interpretation"
  * interpretation from http://bloodpressure.oemig.de/fhir/ValueSet/Interpretation (required)
  * range 0..* BackboneElement "reference range"
    * low 0..1 integer "Low Range, if relevant"
    * high 0..1 integer "High Range, if relevant"
    * age 0..1 Range "Applicable age range, if relevant"
    * text 0..1 string "Text based reference range in an observation"

* interpretation 0..1 SU CodeableConcept "overall clinical meaning of the BP measurement"
* interpretation from http://bloodpressure.oemig.de/fhir/ValueSet/Interpretation (required)

* effective[x] 0..1 SU date or instant or Period "date of observation" "different representations"

* anaesthesia 0..1 CodeableConcept "Anaesthesia of patient during measurement"
* anaesthesia from http://bloodpressure.oemig.de/fhir/ValueSet/Anaesthesia (required)

* measurementSetting 0..1 CodeableConcept "The setting in which the measurement was performed; i.e. at home, at clinic, at emergency room, etc."
* measurementSetting from MeasurementSettingVS (extensible)

* bodyWeight[x] 0..1 CodeableConcept or Reference(Observation) "body weight"

* medication[x] 0..* boolean or Reference(MedicationStatement) "medication to be considered, minimum is the indication that there is some kind of medication"
 
* method 0..1 CodeableConcept "measurement method"
* tilt 0..1 integer "tilt (in degrees)"

* comment 0..1 string "any comment"

* subject 0..1 Reference(Patient) "reference to the subject of the measurement"
* author 0..1 Reference(Practitioner) "reference to the author of the measurement"
* performer 0..1 Reference(Practitioner) "reference to the performer of the measurement"

* details 0..* Reference(BloodPressure) "reference to the point-in-time measurements"

