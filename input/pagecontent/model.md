<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

Blood pressure measurements appear to be obiously simple.
However, discussions reveal that the details allow for interpretations.
The only way out is an exact definition in form ob class diagrams.

### Base Model

The aforementioned details are now aggregated in form of classes and linked together.
The important items are in bold:

<div width="500px">
{% include base_model.svg %}
</div>

To simplify abstract classes are introduced.

### "Magic Code" - What is a blood pressure measurement?

A big problem when storing observations in a general representation form 
is to identify all - or just specific - blood pressure measurements.

An important aspect for discussion is the way a blood pressure measurement can be identified.
Within "FHIR US Core r4" profiles, this is indicated by a so-called "magic Code".
Unfortunately, the associated LOINC code designates non-invasive measurements, leading to misunderstandings
and problems when using the according profiles.

<div width="500px">
{% include magic_code.svg %}
</div>

In most use cases, probably 99%, only non-invasive measurements obtained during routine 
is considered or of interest resp. in scope. Nevertheless, when talking about blood pressure the
remaining 1% must be considered as well.

### Vital Signs and other IGs

Some implementation guides, esp. Vital Signs, specify details for blood pressure representations (in form
of profiles) as well. The meaning of those is to use the subset marked in the figure above as "routine".
Consequently, those guides may just derive the appropriate subset in form of profiles as well.

### Spot vs. Average 

In principle, different individual measurements are performed.
They can be used and calculated into an average value optionally including
the used measurements:

<div width="500px">
{% include average_model.svg %}
</div>


### Calculation

The pulse pressure is the result of a calculation of systolic and diastolic values.
An average value is the calculation of a set of spot measurements:

<div width="500px">
{% include calculation_model.svg %}
</div>

### Interpretation

The interpretation of values depends on certain context details:

<div width="500px">
{% include interpretation_model.svg %}
</div>

* Some medication reduces the blood pressure to protect against strokes etc., but not all medications are relevant.
* Physical exertions like riding a bike increases the blood pressure.
* The positioning of the body has a direct impact on the result.
* ...

### Equivalence of Models

#### Pre- vs. Post-Coordination

An important topic taht normally does not belong into such a guide is the translation of pre-coordinated concepts
to/from appropriate post-coordinated terms. The following table should help with that although the best presentation
and appropriate details are still to be elaborated.

| post-coordinated | base | addt'l details |
| --- | --- | --- |
| in rest and sitting | standard | no addt'l details because this represents what is expected |
| in rest and standing | standard | position = standing |
| walking | standard | position = walking + exertion = 25W |
| jogging | standard | position = walking + exertion = 100W |
| biking uphill | standard | position = sitting + exertion = 200W |
| ... | ... | ... |

In principle, a function like this one is necessary:

> f(pre-coordination) = Base(concept) + Set(attributeValue)

The problem is that this function is self-defining and recursive in the sense of a taxonomy.

