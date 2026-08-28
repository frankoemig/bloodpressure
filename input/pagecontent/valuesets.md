<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

An important aspect when going forward is to collect to codes, esp. LOINC and Snomed CT,
that will be used in the end.

There are two possible approaches:

* **top down**: create a big value set and divide by applying filters, eg. to seperate systolic and diastolic values
* **bottom up**: create many but small value sets for specific purposes and aggregate into bigger ones by using content logical definitions.

This page shall operate as a starting point to collect the value sets:

* major value set:
  * component
    * systolic values
    * diastolic values
  * exertion
    * with
	* without
  * position
    * sitting
	* standing
	* lying
	* ..
  * medication
    * with
	* without
  * calculation
  * ..

### Construction of Value Sets

We need to define how we can do that:

* top-down
  * create a big value set with all possible values
  * apply a filter to constrain into subsets
* bottom-up
  * create individual value sets
  * combine into bigger ones

> What is the best way forward?
