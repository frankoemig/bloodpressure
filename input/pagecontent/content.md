<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>


This page should collect the details for the content itself - if not captured in [the mindmap logical model](mindmap.html) already. 
However, as this guide is at the moment not mature enough, and the necessary resources are not yet provided
this page is in a very draft state. It can be expected to enhance it at later point in time:

| Element | Explanation / Comment |
| --- | --- |
| normal non-invasive measurements | this is a set of 'simple' non-invasive measurements that are usually done by either the physician or the patient |
| special non-invasive measurements | another set of non-invasive measurements are only performed by surgeons |
| special invasive measurements | special bp measurement that require a surgery |
| pulse pressure | calculated value out of systolic and diastolic values |
| spot measurement | to be included in average calculations |
| long-term value(s) | calculated value, optionally with references to the individual measurements; <br/> some average values are treated as a single spot value because the source values appear over a short period of time |
| involved actors | who is involved into measuring bp values: physician, patient, recorder, .. |
| relevant medication |
| ... |

### Information Model vs. Use Case

The information model has to cover all details that are mentioned in the mind-map.
It must be possible to derive a data representation that allows for storing all details while 
maintaining the relationships (and cardinality) between the different data elements.

Special measurement settings are then instantiations for a single measurement.
Executable protocols represent sequences of those measurements that require the storage of multiple measurements.

### Method and Device

Methods and devices overlap. Some methods can only be executec with certain devices and vice-versa.

| Method | Device |
| | manual | automatic | ... |
| --- | --- |
| pulpation | |
| oscultation | |
| ... | ... |


### Open Issues

* collect all details
* introduce hierarchic structure (to visualize dependencies)




