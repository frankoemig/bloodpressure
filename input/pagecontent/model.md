<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

Blood pressure measurements seem to appear to be obiously simple.
However, discussions reveal that the details allow for interpretations.
An initiator for this discussion is LOINC. It represents a collection of codes whose 
underlying concepts are overlapping in their semantics. For example,

* 87741-5 = systolic blood pressure - post exercise
* 8459-0 = systolic blood pressure - sitting

can be combined w/o contradiction. In principle, it expresses "systolic bp after exercise and sitting".
But how to prevent a contradictious combination like "at rest and during exercise"? 
And is "systolic bp sitting" and "diastolic bp standing" a combination for different components 
that should be allowed? And what to use as the overarching concept code then?

Probably more questions arise that require a clarification.
The only way out is an exact definition in form ob class diagrams.

### Base Model

First, the details from the landing page should be aggregated in form of classes and linked together now.
The important items are in bold:

<div width="500px">
{% include base_model.svg %}
</div>

To simplify abstract classes are introduced. 
And please recognize that the classes are on different abstraction levels.

### What is a blood pressure measurement?

A big problem when storing observations in a general representation form 
is to identify all - or just specific - blood pressure measurements.
We do need to support different levels of granularity.

An important aspect for discussion is the way a blood pressure measurement can be identified.
Unfortunately, the associated LOINC code designates non-invasive measurements, leading to misunderstandings
and problems when using the according profiles.

<div width="500px">
{% include magic_code.svg %}
</div>

In most use cases, probably 99%, only non-invasive measurements obtained during routine 
is considered or of interest resp. in scope. Nevertheless, when talking about blood pressure the
remaining 1% must be considered as well.

### Spot vs. Average 

A total different dimension within the hierarchy shown above is a spot measurements - in contrast
to an average calculated over time.
Then in principle different individual measurements are performed.
They can be used and calculated into an average value optionally including
the used measurements:

<div width="500px">
{% include average_model.svg %}
</div>

**Question**: Is it safe to assume, that for vital signs only spot measurements should be considered?

### Calculation

Another dimension is when measurements are calculated from otherse:
The pulse pressure is the result of a calculation of systolic and diastolic values.
An average value is the calculation of a set of spot measurements:

<div width="500px">
{% include calculation_model.svg %}
</div>

### Dimensions

In summary, we can state some high-level dimensions that affect what we measure
and how it should be interpreted:

<div width="500px">
{% include bloodpressure_dimensions.svg %}
</div>

### What is to be used for "Vital Signs"?

Some implementation guides, esp. Vital Signs, specify details for blood pressure representations (in form
of profiles) as well. The meaning of those is to use the subset marked in the figure above as "routine".
Consequently, those guides may just derive the appropriate subset in form of profiles as well.
Eventually, vital signs may further constrain the set of measurements that should be in scope!?

For vital signs the following **subdimensions** seem to be in scope:

* non-invasive
* measured
* spot
* no exertion

**Consequence**: If this assertion is correct, then the vital signs guide should select the appropriate profile
including the corresponding value sets by reference.

### Do we need a "magic code"?

As indicated already, it would be good to have a single generic code, that allows to identify 
all observations that are blood pressure measurements.
However, that should not falsify the description of the observation itself.
Within "FHIR US Core r4" profiles, this is indicated by a so-called "magic Code".
There is no doubt that such a code is necessary in order to identify all observations in question
with a single and simple query. 

**Question**: Would it make sense that this code can be specialized (as an ontology?) 
to identify the subdimension in scope?

### Interpretation of Measurements

An important aspect is the interpretation of values that depends on certain context details:

<div width="500px">
{% include interpretation_model.svg %}
</div>

* Some medication reduces the blood pressure to protect against strokes etc., but not all medications have an impact on the blood pressure.
* Physical exertions like riding a bike increases the blood pressure.
* The positioning of the body has a direct impact on the result.
* A wrong cuff size may lead to wrong measurements.
* ...

### Equivalence of Models

An important question is to identify different way to represent the same concept.
In other words, how to identify that different statements express the same?

In previous discussions in Germany we have stated, that it is the task of the consumer to identify that.
As a precondition he can rely on the exactness and correctness of the statement. 
Therefore, it must be clear and precise, without allowing for ambiguities and misinterpretations.

#### Pre- vs. Post-Coordination

An important aspect is the transformation between pre- and postcoordinated forms.
A single precoordinated concept can express and convey the same semantics 
as postcoordinated terms, or using the logical models from above, the combination
of certain attributes.

The following table should help with that although the best presentation
and appropriate details are still to be elaborated.

| post-coordinated | base | addt'l details | LOINC |
| --- | --- | --- |
| in rest and sitting | standard | no addt'l details because this represents what is expected |
| sitting |  | unclear whether it is in rest or not |  |
| systolic + sitting |  | component = systolic | 8459-0 |
| systolic + after exercise |  | component = systolic + exertion = after (whatever that means) | 87741-5 |
| in rest and standing | standard | position = standing + exterion = at-rest|
| walking | standard | position = walking + exertion = 25W |
| jogging | standard | position = walking + exertion = 100W |
| biking uphill | standard | position = sitting + exertion = 200W |
| ... | ... | ... |

In principle, a function like this one is necessary:

> f(pre-coordination) = Base(concept) + Set(attributeValue)

The problem is that this function is self-defining and recursive in the sense of a taxonomy.

Within Snomed CT, the expression language in combination with a reasoner allows for identifying illegal combinations.
Unfortunately, LOINC does not provide such a machinery. (Or does it?)

In addition, it may help to identify whether the values are relevant for a correct
interpretation or not. The following bullet list provides an (draft) overview:

* relevant
  * exertion
  * position
  * tilt
* not relevant (only within exceptional circumstances)
  * cuff size
  * cuff type
* questionable
  * method
  
Consequently, a transformation in between becomes necessary.
It is expressed as a formula to indicate the idea:

> f (concept1, position1, tilt1, exertion1) = f (concept2, position2, tilt2, exertion2)

Maybe more parameters are necessary. If the relevance shown above is not correct
then modifications are necessary to this formula are necessary as well.

#### Subsumption

Another problem is the granularity of details that are provided. 
When is it safe to assume something for a correct interpretation of the observation?
For example, "sitting at-rest" seems to be clear, "exercising" (perhaps with some further details) makes 
the knowledge of sitting/standing/walking less important.

#### Interpretations

If an interpretation is included, like "too high", does it matter, when the specifity of the measurement is not provided?
For example, does a statement of "200/160 as normal" makes it irrelevant to mention that the patient is exercising?
Or does it raise some concerns about a possible wrong interpretation?
