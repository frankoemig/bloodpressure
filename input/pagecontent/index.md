<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

This is the homepage for blood pressure.
The primary purpose is to collect the details for properly specifying data representations in different formats,
i.e. product families like FHIR, CDA and v2x/v2+ (and perhaps also foreign standards).

> This set of pages still requires a realignment with sibbling specifications like body weight, body height and
> other. Therefore, some details may be listed that are not necessary and belong to the other models.
> This is especially true for the codesystems.
> For simplicity, some artefacts are copied into this specification instead of referencing them.
> So, please take that as work-in-progress.
>
> Vital Signs in contrast should derive a subset out of the details specified within this guide.

Following is the overall high-level information model that places bllod pressure in the middle (in light green).
Describing details are referenced in blue. 
Artefacts in brown represent other concepts this one has relations with:

![Blood Pressure](bloodpressure-model.png){:height="400px"}
<br clear="all"/>  

### Requirements / Targets

* collecting all relevant details for blood pressure = single content specification
* base for other guides / derived profiles
* independently specified from specific ITS 
* translatable into different ITS
* complete
* providing an organized hierarchy

Involved groups:

* Orders & Observations
* CIMI
* C-CDA/CDAMG
* V2MG

Another target is to invite for contributions and participation.
The primary author is happy to get comments and further input.

### MindMap as a starting point

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

#### Some Notes on the mindmap

* value on the left: assembles all details dealing with the measured value itself
* context: relevant details to correctly interpret the data
* protocol: 'meta-data' about the measurements
* sleep status: this has been replaced by consciousness to also allow for "unconscious" as a separate value.
* event: Some people increase their blood pressure by just seeing a physician, or for other reasons. Not sure whether this is relevant information, but it should not be left out.

### Topics for Discussion

**Exertion**: That could be managed as a separate observation. The same applies to other relevant details.

### Important next Steps

The mindmap above has to be completed, enhanced, and conceptualized into [information models](model.html).
In addition, all elements must be [described](content.html).

### Open Issues

* fix outstanding errors
  * references
  * CS + VS
  * ...
* adding content
  * more components
  * definitions and descriptions
  * references to other specifications
* further separation the specifications
* clean vocabulary provision

### Contributors

in alphabetical order:

* Nathan Davis
* Rob Hausam
* Stan Huff
* Claude Nanjo
* Alina Oemig
* Frank Oemig (IG author)

