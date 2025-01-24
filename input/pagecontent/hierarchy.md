<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

What is the resulting hierarchy of profiles?

### Hierarchy for Blood Pressure Profiles with regard to Vital Signs (informative)

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


### Country-specific Derivations

.. should not be necessary.

