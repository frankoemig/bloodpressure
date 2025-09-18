<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

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

#### Coloring Scheme

The mindmap uses colors to indicate the following:

* red: measured details
* light blue: data types
* light green: artefacts that are better provided as separate models
* dark blue: involved persons
* yellow: details from context or protocols
* white: specific protocols

#### Some Notes on the MindMap

* value on the left
  * w/ red background: assembles all details dealing with the measured value itself
  * w/ green background: other "mini models" that may provide important details but are not directly specified here
* context items: relevant details to correctly interpret the data
* named context: predefined specific settings for documenting the context, eg. sitting + in rest + in hospital, sitting + at home
* protocol item: 'meta-data' about the measurements that are important to document or to alter for specific protocols
* [executable protocol](protocols.html): individual protocols that describe a set of specific bp measurements (with some known details)
* sleep status: this has been replaced by consciousness to also allow for "unconscious" as a separate value.
* activity, consciousness, exertion: these concepts overlap 
* event: Some people increase their blood pressure by just seeing a physician, or for other reasons. Not sure whether this is relevant information, but it should not be left out.
* the device drives the method (unfortunately this cannot be expressed in the mindmap)

### Other models

* **Anaesthesia, Medication**
* **Exertion**: That could be managed as a separate observation. The same applies to other relevant details.
  * activity (status, level)
* **Body Weight** (esp. overweight is important to know)
* **Pulse**

### Important next Steps: Information Model

The mindmap above has to be completed, enhanced, and conceptualized into [information models](model.html).
In addition, all elements must be [described](content.html).

