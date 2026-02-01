<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>

Different types of "protocols" exist.

Therefore, the information models should cover all aspects that are needed to specify what to measure exactly.

To separate and distinguish between both, the first is called "measurement setup",
whereas the second is handled as "executable protocol".

### Measurement Setup

The measurement setup is used to specify the parameters for a single measurement.

| Protocol | Description | aspects to consider |
| --- | --- | --- |
| AOBP | Automated Office Blood Pressure | measuring blood pressure in a clinical setting that uses an automated device to take multiple readings with the patient alone in a room, thereby eliminating the "white coat effect" and human error associated with manual measurements |
| SMBP | Self-measured Blood Pressure | patient measure BP outside a clinical setting—typically at home—to help diagnose and manage hypertension; use a validated, automated, upper-arm cuff device, untrusted device, typically measured at wrist |

Both settings can be described as follows:

| | AOBP | SMBP |
| --- | --- | --- |
| measurement setting | physician office | home |
| location at body | arm | wrist |
| body position | sitting | ? |
| exertion | in rest | ? |
| position of feet | down | ? |
| device | trusted | untrusted |
| ... | | |

### Executable Protocols

An executable protocol typically should specify a sequence of measurements that are obtained for a certain purpose.

| Protocol | Description | aspects to consider |
| --- | --- | --- |
| PO standard | normal observation by a physician in his office | normally performed in office, patient is sitting and in rest, professional device, measured at arm |
| ABI | Ankle-Brachial Index | quick, non-invasive, and painless diagnostic procedure that compares blood pressure in the arm with blood pressure at the ankle to screen for Peripheral Artery Disease (PAD) |
| Bruce | Bruce treadmilll test | evaluation of cardiac function and physical fitness
| Naughton | treadmill protocol | increasing exertion |
| [NHANES](https://wwwn.cdc.gov/nchs/data/nhanes/public/2021/manuals/2021-BloodPressureProcedures-508.pdf) | National Health and Nutrititon Examination Survey |
| orthostatic | supine -> sitting -> standing | varying body position to examine what happens if patient stands up; difference is calculated |
| 24h long-term | sequence of observations during 24 hours | measured all 15 minutes for 24 hours, at arm, arbitrary exertion, activity unclear |
| tilt | sequence of measurements with increasing tilt | tilt angle |
| .. | .. |

The aspects will be further specified...

#### Orthostatic

For orthostatic evaluations the difference in the sequence of lying (supine), over sitting to standing is calculated:

![Orthostatic BP Measurment](orthostatic.png){:height="400px"}
<br clear="all"/>  

#### Tilting

![Tilting BP Measurment](tilting.png){:height="400px"}
<br clear="all"/>  

#### Long-term BP Measurement

![Long-term BP Measurement](long-term.png){:height="400px"}
<br clear="all"/>  

### Other

* *Systolic (Blood) Pressure Intervention Trial* (SPRINT):  clinical trial that found that treating high blood pressure (hypertension) to a lower goal of less than 120 mm Hg significantly reduced the risk of cardiovascular events and death compared to standard treatment (less than 140 mm Hg) in high-risk patients

