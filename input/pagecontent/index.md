<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

### Summary 

This is the homepage for observations and measurements dealing with blood pressure.
The primary purpose is to collect the details for properly specifying data representations in different formats,
i.e. product families like FHIR, CDA and v2x/v2+ (and perhaps also foreign standards).
It is caused by the observation that many implementation guides exist (or are under development)
that deal with blood pressure in some regard but are different in many ways.
They also start with creating profiles in a specific technology according to obvious needs, 
but without specifying any details or providing any kind of formalization.
This guide shall start from the opposite side by specifying the details and their relationships.

> This set of pages still requires a realignment with sibbling specifications like body weight, body height and
> other. Therefore, some details may be listed that are not necessary and belong to the other models.
> This is especially true for the codesystems.
> For simplicity, some artefacts are copied into this specification instead of referencing them.
> So, please take that as work-in-progress.
>
> Vital Signs in contrast should derive a subset out of the details specified within this guide.

### Scope of Use

Following is the overall high-level information model that places bllod pressure in the middle (in light green).
Describing details are referenced in blue. 
Artefacts in brown represent other concepts this one has relations with
but that are not specified further. (This will be handled by other guides that are created the same way.):

![Blood Pressure](bloodpressure-model.png){:height="400px"}
<br clear="all"/>  

### How to proceed in this project?

In this project, the starting point is a collection of artefacts that are necessary to consider
in a technical representation. Therefore, a profile in FHIR or v2.x is then the final result,
not the starting point. Also, collecting codes for a semantic representation will probably
occur late in the poroject:

![Process Model](process-model.png){:height="400px"}
<br clear="all"/>  

Therefore, this project will proceed according to the following steps:

1. create a [mindmap](mindmap.html) that collects all relevant details that are necessary to consider somehow
2. create an [information model](model.html) that establishes relationships for all collected details
3. derive profiles when trying to serialize the model
4. transfer the profile into a technology
  * [v2.x](v2.html)
  * [V3/CDA](cda.html)
  * [FHIR](fhir.html)

#### Requirements / Targets

* collecting all relevant details for blood pressure = single content specification
* base for other guides / derived profiles
* independently specified from specific ITS 
* translatable into different ITS
* complete
* providing an organized hierarchy


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

### Involved groups

The following HL7 WG should be involved:

* Orders & Observations
* CIMI
* C-CDA/CDAMG
* V2MG

Another target is to invite for contributions and participation.
The primary author is happy to get comments and further input.

### Acknowledgements

This Implementation Guide was made possible by the thoughtful contributions of the following people 
and organizations (in alphabetical order):

* Bruce Bray
* Nathan Davis
* Rob Hausam
* Stan Huff
* Claude Nanjo
* Alina Oemig
* Frank Oemig (IG author)

