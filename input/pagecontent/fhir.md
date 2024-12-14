<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>



#### Step 4a: Profile (with FHIR)

The following diagram explores about how blood pressure can be profiled if the Observation Resource is the foundation.
Again, this drawing is somehow abstract:

<div width="500px">
{% include bloodpressure_profile.svg %}
</div>

Link to the FHIR Profile: [Blood Pressure Profile](StructureDefinition-us-core-modified-blood-pressure.html)

**Open Questions:**

* Should we better use components instead of extensions? See the second profile...

