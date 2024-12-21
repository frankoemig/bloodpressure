CodeSystem: V2DataTypes
Id: v2DataTypes
Title: "v2 Data Types"
Description: "**v2 Data Types** (for observations)"

* ^url = "http://bloodpressure.oemig.de/fhir/CodeSystem/v2DataTypes"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://bloodpressure.oemig.de/fhir/ValueSet/v2DataTypes"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* #CNE "v2 DT CNE" "coded no exceptions"
* #CWE "v2 DT CWE" "coded with exceptions"
* #NM "v2 DT NM" "numeric"
* #ST "v2 DT ST" "string"




ValueSet: V2DataTypes
Id: v2DataTypes
Title: "v2 Data Types"
Description: "**v2 Data Types**"

* ^url = "http://bloodpressure.oemig.de/fhir/ValueSet/v2DataTypes"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://bloodpressure.oemig.de/fhir/CodeSystem/v2DataTypes




