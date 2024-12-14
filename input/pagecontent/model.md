<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>



### Information Model

The aforementioned details are now aggregated in form of classes and linked together.
The important items are in bold:

<div width="500px">
{% include bloodpressure_im.svg %}
</div>

To simplify abstract classes are introduced.

#### Pre- vs. Post-Coordination

An important topic taht normally does not belong into such a guide is the translation of pre-coordinated concepts
to/from appropriate post-coordinated terms. The following table should help with that although the best presentation
and appropriate details are still to be elaborated.

| post-coordinated | base | addt'l details |
| --- | --- | --- |
| in rest and sitting | standard | no addt'l details |
| in rest and standing | standard | position = standing |
| walking | standard | position = walking + exertion = 25W |
| jogging | standard | position = walking + exertion = 100W |
| biking uphill | standard | position = sitting + exertion = 200W |
| ... | ... | ... |

In principle, a function like this one is necessary:

> f(pre-coordination) = Base(concept) + Set(attributeValue)

The problem is that this function is self-defining and recursive in the sense of a taxonomy.

