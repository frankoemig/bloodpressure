
<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

The **information model** shall provide the complete overview about all details and how they relate.
The **Logical Model** is used to provide a documentation for the **mindmap**.
However, in the end only a fragment of the information model will be instantiated.
That requires to specify the subset of the available data elements.
Furthermore, some details of the mindmap/information model are mutual exclusive.
For example, a point-in-time measurement will not have a duration.
Or using a cuff will result in a measurement external to the body, etc.

This page should inform about the possible **profiles (on this model)** that constrain the usage.

> TBD: We need to investigate further how to represent that information the best way.

### self-measured vs. professional measurement

> tbd: describe

| aspect |self-measured | professional measurement|
| --- | --- | --- |
| position | unclear | sitting |
| method | automated | manual/automated |
| device type | cuff | cuff |
| exertion | unclear | in rest (at least for several minutes) | 
| ... |

### point-in-time vs. calculated

> tbd: describe

| aspect |point-in-time | calculated |
| --- | --- | --- |
| duration | n/a | minutes/hours |
| calculating function | n/a | average/min/max/.. |
| ... |


### other profiles

> tbd: what other profiles are needed?
