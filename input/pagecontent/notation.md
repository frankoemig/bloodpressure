<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>


This page is intended to explain the notation being used in the different models.
It should help to read and understand the models, especially the class diagrams:

<div width="500px">
{% include notation.svg %}
</div>

**Explanation:**
* all boxes represent classes
* "Abstract Class" is an abstract class that cannot be instantiated. (It is written in italics.)
* "Class 1" and "Class 2" are specialisations of the "Abstract Class" which is documented by the arrow.
  * both can be instantiated because they are not abstract.
* "generalAttribute" is an attribute in the abstract class, that is inherited to the specialisations.
* "specialAttributeForClass" is an attribute that is valid in this class, and perhaps inherited to further specialised classes.
* "related Class" is a class that is somehow related to "Abstract Class", i.e. with the class to which the connection goes.
* "Component 1" is a component of "related class", and it can exist on its own, i.e. independent from "related class".
* "Component 2" is also a component of "related class", but it depends in its existence on the existence of "related class".
* "to abstract" with the small arrows denotes the direction of the connection/relationship.
* "a..b" denotes the cardinality of "abstract class" for each element of "related class" element. For example, each "related class" instance can have "a" to "b" related "abstract class" instances.
* "m..n" denotes the cardinality of "related element" for each element of "abstract class".
* Classes can be grouped together to help with reading.
