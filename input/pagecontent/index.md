<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

This is the homepage for blood pressure.
The primary purpose is to collect the details for properly specifying data representations in different formats,
i.e. product families (and perhaps also foreign standards).

> This set of pages still requires a  realignment with the sibbling specifications body weight, body height and
> vital signs in general. Therefore, some details may be listed that are not necessary and belong to the other models.
> This is especially true for the codesystems.
> For simplicity, some artefacts are copied into this specification instead of referencing them.
> So, please take that as work-in-progress.

Following is the overall high-level information model that exemplifies the correlation with other artefacts:

![Blood Pressure](bloodpressure-model.png){:height="400px"}
<br clear="all"/>  


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
* protocol: context information
* sleep status: this has been replaced by consciousness to also allow for "unconscious" as a separate value.
* event: Some people increase their blood pressure by just seeing a physician, or for other reasons. Not sure whether this is relevant information, but it should not be left out.

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
* Frank Oemig

