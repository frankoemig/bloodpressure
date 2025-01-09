CodeSystem: ObservationCodesCS
Id: ObservationCodes
Title: "Observation Codes"
Description: "**Observation Codes** (for temporary use only; to be replaced later on)"

* ^url = "http://bloodpressure.oemig.de/fhir/CodeSystem/ObservationCodes"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://bloodpressure.oemig.de/fhir/ValueSet/ObservationCodes"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* #exertion "exertion"
* #location "location"
* #position "position"
* #consciousness "consciousness"
* #meanArterial "mean arterial pressure"




ValueSet: ObservationCodesVS
Id: ObservationCodes
Title: "Observation Codes"
Description: "**Observation Codes**"

* ^url = "http://bloodpressure.oemig.de/fhir/ValueSet/ObservationCodes"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://bloodpressure.oemig.de/fhir/CodeSystem/ObservationCodes




