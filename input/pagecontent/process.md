<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

What is the process to result in product family specific artefacts?

<div>
{% include process.svg width='600px' %}
</div>

1. The process starts with a collection of details which are documented and organized into groups by mindmaps.
2. The next step improves everything further and is then translated into information models to semantically clarify the content.
3. In a third step the details are technically structured that prepares the translation into an ITS.
4. The fourth step translates the organized and semantically clarified details into an implementable technology specification. In our case this is FHIR, V3/CDA and v2.
5. Finally, implementations are validated to ensure that everything is correct and implementable.

The process is not organized into a pure sequential process according to the waterfall model,
but allows for stepping back to adjust and improve the results from previous steps.

### Step 1: MindMap

The following mindmap collects and sorts all aspects around blood pressure that are necessary for 
a correct interpretation and clinical use.
It has to be recognized that some artifacts (eg. reference range) are abbreviated, and the corresponding details 
must be duplicated. Unfortunately, PlantUML mindmaps do not allow for cross-links to denote that.

The following diagram aggregates all aspects that can be found somewhere.
It tries to arrange them in a way that helps to understand the semantics,
and to sort them.
For the moment, additional explanatory text has not been duplicated from other sources for copyright and IP reasons.
It can be expected, that this will be done later on.

<div>
{% include bloodpressure_mm.svg width='600px' %}
</div>


#### Special Aspects for "Profile Subsets"

* generic/advanced set allowing to convey all types of blood pressurements
* constrained to "standard measurements" that are commonly used on panels (so excluding specific ones), eg. at arm + sitting + in rest
* special clinical measurements, eg. artery
* average values
* ...

### Step 2: Information Model

The aforementioned details are now aggregated in form of classes and linked together.
The important items are in bold:

* [information model](model.html)


### Step 3: Hierarchy for Blood Pressure Profiles with regard to Vital Signs (informative)

The possible values for blood pressure measurements have to be instantiated in different ways.
In combination with vital signs it forms a hierarchy:

<div width="500px">
{% include bloodpressure_hierarchy.svg %}
</div>

The general blood pressure profile on top accumulates all possible details in one profile.
It allows for capturing every blood pressure measurement.

Discussions has revealed that not every blood pressure measurement belongs to the vital sign category.
Only specific measurements, eg. in rest with no exertion, can be used as vital signs as it is shown in a panel.
Therefore, the BP panel is a specialisation of vital signs but not all other BP measurements.

It is also questionable whether the country-specific core is really necessary?!

### Step 4: Technology Binding (ITS)

**How to represent the same information in different standards?**

#### Step 4a: Profile (with FHIR)

Please see [FHIR page](fhir.html).

#### Step 4b: Template (with CDA)

Please see [CDA page](cda.html).


#### Step 4c: OBX Segment Group profile (with v2.x)

Please see [v2 page](v2.html).

#### Step 4d: Other Standards

In order to enable interoperability also other standards have to be included into
the technology binding (ITS):

* openEHR
* xDT (for Germany)

### Country-specific Derivations

.. should not be necessary.

### Modularization

Another aspect to cover/consider/realize is modularization. What does that mean?
In which to organize the content.
Modules can be:

* hierarchic (= aka sub-modules)
* per ITS, i.e. depending on or separated by product family
* content, i.e. other clinical objects/models

### Tooling

What tools to use?

* PLantUML
* Enterprise Architect
* other?

