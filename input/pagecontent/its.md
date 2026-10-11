
<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

The **implementation technology (ITS)** is responsible for how the data/information has to be represented 
by using the different containers being available. As a consequence, the way highly varies.

### FHIR

**FHIR** provides a set of containers called resources that can be arranged in form class diagrams.
In order to get that represented in a way allowing for assigning all details a UML package represents a resource, 
and the classes inside that package are responsible for showing the internal structures:

<div width="500px">
{% include its_FHIR.svg %}
</div>

Resources:

* [Observation](https://www.hl7.org/fhir/observation.html)
* [Patient](https://www.hl7.org/fhir/patient.html)
* [PractitionerRole](https://www.hl7.org/fhir/practitionerole.html)
* [Practitioner](https://www.hl7.org/fhir/practitioner.html)

open details:

* medication
* ...

### v2.x/v2+

**v2x/v2+** is a line oriented and delimitered format that could be best represented in form of tables
showing the fields for each line/row. The leftmost table operates as the whole message structure:

<div width="500px">
{% include its_v2.svg %}
</div>

Segments:

* [OBX](https://www.hl7.eu/segOBX.html)
* [PID](https://www.hl7.eu/segPID.html)
* [PRT](https://www.hl7.eu/segPRT.html)

open details:

* medication
* device
* ...

### Model in Version 3.0

> tbd: the drawing is just the first draft!!!!

The drawing collects all details and arranges them as a domain message information model (D-MIM):

<div width="500px">
{% include its_v3.svg %}
</div>

### CDA

> tbd: the drawing is just the first draft!!!!

The following drawing shows the surroundings from a document perspective.
The D-MIM has to be included replacing the 

<div width="500px">
{% include its_CDA.svg %}
</div>

### Binding to terminologies

The terminology needed should be identical for each ITS because an ITS does not make any assumption about codes.
It should be sufficien to hook them in.

