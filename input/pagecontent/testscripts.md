> Update this page!

The test scripts are created by MedCom for testing in [TouchStone](https://touchstone.aegis.net/touchstone/) during MedCom test and certification, both self- and live test. However, the test scripts may be used locally by vendors in their own testsetup, e.g. during code development or test. 

Test scripts presented in this IG are all based on the [FHIR TestScript resource](https://www.hl7.org/fhir/testscript.html). They are created using FSH and published using the FHIR publisher. 

### Before getting started

Use cases described in the [use case document](https://medcomdk.github.io/dk-medcom-hospitalnotification/#12-use-cases) will be referenced throughout this IG and they are the basis for the tests. 

In addition to test scripts based on the use cases, test scripts testing **patient flows** are included. These test scripts will test different, and in some cases extended flows of the HospitalNotification use cases, that hasn't been tested in the use case focused tests. They will of course only test within the boundaries of the HospitalNotification standard and governance. 

#### TouchStone and API
Before getting started with test script execution, it is necessary to have an account on TouchStone and to create a test system. Please follow [this guide to setup an account and test system](https://medcomdk.github.io/MedComLandingPage/assets/documents/TouchStoneGettingStarted.html).

#### Abbreviations and naming

**Abbreviations:**

The term 'inpatient' and abbreviation 'imp' refers to a patient who is admitted/registered as an inpatient in the hospital’s EHR system (Danish: indlagt),  and the term 'emergency' and abbreviation 'emer' refers to a patient that is registered as acute ambulant in the hospital’s EHR system (Danish: akut ambulant).

The abbreviation 'tec' is used when testing the patient flow, to indicate that the test script has a technical character. 

The system under test is abbreviated 'SUT'.

**Test script naming:**

Most of the send test scripts requires that SUT has executed one or more use cases in advance. These use cases are listed in the 'Precondition' columns in the tables. 

**Use cases:** The name of the test scripts is constituted by HospitalNotification_Testscript_[send/receive]-[type]-[imp/emer or alternative flow or precondition], describing the type of messages being sent, or recieved. 'HospitalNotifciation_Testscript_[send/receive]-' is not shown in the naming below.

**Patient flows:** These will be named HospitalNotification_Testscript_PF-[send/receive]-[imp/emer/tec]-[number]. 'HospitalNotifciation_Testscript_' is not shown in the naming below. 

### Send HospitalNotification test scripts
When sending a HospitalNotification, a POST operation is required for all types of messages, and is therefore valid for both the precondition messages and actual messages being tested. 

#### Use Cases

[Test scripts for test of sending use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/HospitalNotification/v300/Send/PatientFlows&activeOnly=false&contentEntry=TEST_SCRIPTS)

| **Type** | **Use case <br> code** | **Description** | **Type** | **Precondition** |
|---|---|---|---|---|
| **Inpatient** |  |  |  |  |
| [STIN](./TestScript-hospitalnotification-send-stin.html) | S1 | Send: Start hospital stay - admitted | STIN |  |
| [STIN-A1](./TestScript-hospitalnotification-send-stin-a1.html) | S1.A1 | Send: Start hospital stay - admitted, without request for a reportOfAdmission | STIN |  |
| [STOR](./TestScript-hospitalnotification-send-stor.html) | S3 | Send: Start leave | STOR | STIN |
| [SLOR](./TestScript-hospitalnotification-send-slor.html) | S4 | Send: End leave | SLOR | STIN, STOR |
| [SLHJ-imp](./TestScript-hospitalnotification-send-slhj-imp.html) | S6 | Send: End hospital stay - patient completed to home/primary sector | SLHJ | STIN |
| [MORS](./TestScript-hospitalnotification-send-mors.html) | S7 | Send: Deceased - dead at arrival to the hospital | MORS | |
| [MORS-imp](./TestScript-hospitalnotification-send-mors-imp.html) | S7 | Send: Deceased - deceased during hospital stay | MORS | STIN |
| [MORS-STOR](./TestScript-hospitalnotification-send-mors-stor.html) | S7 | Send: Deceased - deceased during a period of leave | MORS | STIN, STOR |
| **Emergency** |  |  |  |  |
| [STAA](./TestScript-hospitalnotification-send-staa.html) | S2 | Send: Start hospital stay - acute ambulant | STAA |  |
| [SLHJ-emer](./TestScript-hospitalnotification-send-slhj-emer.html) | S6 | Send: End hospital stay - patient completed to home/primary sector | SLHJ | STAA |
| [MORS-emer](./TestScript-hospitalnotification-send-mors-emer.html) | S7 | Send: Deceased -  deceased during hospital stay | MORS | STAA |


#### Patient Flow

[Test scripts for test of sending patient flows, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/HospitalNotification/v300/Send/PatientFlows&activeOnly=false&contentEntry=TEST_SCRIPTS)

| **Type** | **Description** | **Type** |
|---|---|---|
| **Inpatient** |  |  |
| [PF-send-imp-01](./TestScript-hospitalnotification-PF-send-imp-01.html) | Send: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient. | STIN, STOR, SLOR, SLHJ |
| [PF-send-imp-02](./TestScript-hospitalnotification-PF-send-imp-02.html) | Send: Admit patient, register patient as being on leave, patient doesn’t return from leave, discharge patient.[^1] | STIN, STOR, SLHJ |
| [PF-send-imp-03](./TestScript-hospitalnotification-PF-send-imp-03.html) | Send: Admit patient, register patient as being on leave, patient returns from leave, patient dies | STIN, STOR, SLOR, MORS |

[^1]: In this flow it is allowed to add a SLOR-message between STOR and SLHJ. In case the system does so, please skip this test script.


### Receive HospitalNotification message
When receiving a HospitalNotification, a GET operation is required for all types of messages, valid for both the precondition messages and actual messages being tested. 

**Test examples/fixtures:**
Test examples are, in TouchStone testing, called fixtures. These fixtures are uploaded to TouchStone. During setup of a test, all relevant fixtures will be uploadet to the server used during test. From a client application e.g. a vendor's system, it is possible to request relevant fixture.

**HospitalNotifications:** 
Timestamps in most fixtures (HospitalNotifications) are sent between the 28th of February 2023 and 7th of March 2023. The only exception are the fixture used for PF-receive-tec-04 which is on the 28th of February 2023 and the fixture used for PF-receive-tec-05 which is on the 29th of February 2024. All corrections and cancellation messages are sent one hour after the message it revises or cancels.

All fixtures are based on the test patient:
* Family name: Elmer
* CPR-nr.: 250947-9989 

#### Placeholders
[Placeholders](https://touchstone.aegis.net/touchstone/userguide/html/testscript-authoring/placeholders.html?highlight=placeholder) are used in the fixtures. Placeholders are used to ensure uniqueness in a fixture, and to ensure that vendors testing at the same time won't interfere with eachother. 

**UUID:**
Bundle.id will be generate during the test setup. The following line is included in the fixtures.
  `<id value="${UUID}"/>`
Which results in the following being generated during setup. For instance: 
  `<id value="b9b4818e-02de-4cc4-b418-d20cbc399006"/>`

**Digits:**
MessageHeader.destination.endpoint and id of the MessageHeader, used in the elements MessageHeader.id, Provenance.target and Provenance.entity.what, includes the placeholder D6. 
The following line is included in the fixtures.
  `<id value="hefc6d95-6161-4493-99c9-f35948${D6}"/>` or `<endpoint value="https://sor2.sum.dsdn.dk/#id=953741000016009${D6}"/>`. <br>
Which results in the following being generated during setup. For instance: 
  `<id value="b9b4818e-02de-4cc4-b418-d20cbc399006"/>` or `<endpoint value="https://sor2.sum.dsdn.dk/#id=953741000016009"/>`

#### GET operation
When searching for a HospitalNotification message, the GET operation requires a variable to search for a specific message. The variable used in the request is constituted by client information and two search parameters 1) the destination endpoint with placeholder ${D6}, and 2) the Bundle.id. 

In the test scripts, the search parameter are: 
  `"params": "?message.destination-uri=${destinationUri-STIN}&amp;member._id=${bundleid-STIN}"`
Which results in the following variable to be used in the GET operation. For instance: 
  `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle?message.destination-uri=https://sor2.sum.dsdn.dk/#id=953741000016009399006&amp;member._id=b9b4818e-02de-4cc4-b418-d20cbc399006`

#### Use Cases

[Test scripts for test of the recieving use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/HospitalNotification/v300/Receive/UseCases&activeOnly=false&contentEntry=TEST_SCRIPTS)


| **Type** | **Use case <br> code** | **Description** | **Type** | **Precondition** |
|---|---|---|---|---|
| **Inpatient** |  |  |  |  |
| [STIN](./TestScript-hospitalnotification-receive-stin.html) | R1 | Receive: Start hospital stay - admitted | STIN |  |
| [STIN-A1](./TestScript-hospitalnotification-receive-stin-a1.html) | R1.A1 | Receive: Start hospital stay - admitted, without request for reportOfAdmission | STIN |  |
| [STOR](./TestScript-hospitalnotification-receive-stor.html) | R3 | Receive: Start leave | STOR | STIN |
| [SLOR](./TestScript-hospitalnotification-receive-slor.html) | R4 | Receive: End leave | SLOR | STIN, STOR |
| [SLHJ-imp](./TestScript-hospitalnotification-receive-slhj-imp.html) | R6 | Receive: End hospital stay - patient completed to home/primary sector | SLHJ | STIN |
| [MORS](./TestScript-hospitalnotification-receive-mors.html) | R7 | Receive: Deceased - is dead at arrival to the hospital | MORS | |
| [MORS-imp](./TestScript-hospitalnotification-receive-mors-imp.html) | R7 | Receive: Deceased - deceased during hospital stay | MORS | STIN |
| [MORS-STOR](./TestScript-hospitalnotification-receive-mors-stor.html) | R7 | Receive: Deceased - deceased during a period of leave | STIN, STOR |
| **Emergency** |  |  |  |  |
| [STAA](./TestScript-hospitalnotification-receive-staa.html) | R2 | Receive: Start hospital stay - acute ambulant | STAA |  |
| [SLHJ-emer](./TestScript-hospitalnotification-receive-slhj-emer.html) | R6 | Receive: End hospital stay - patient completed to home/primary sector | SLHJ | STAA |
| [MORS-emer](./TestScript-hospitalnotification-receive-mors-emer.html) | R7 | Receive: Deceased - deceased during acute ambulant | MORS | STAA |

#### Patient Flow

[Test scripts for test of the recieving patient flows, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/HospitalNotification/v300/Receive/PatientFlows&activeOnly=false&contentEntry=TEST_SCRIPTS)

| **Type** | **Description** | **Type** |
|---|---|---|
| **Inpatient** |  |  |
| [PF-receive-imp-01](./TestScript-hospitalnotification-PF-receive-imp-01.html) | Receive: Patient is admitted, patient is registered as being on leave, patient returns from leave, patient is discharged | STIN, STOR, SLOR, SLHJ |
| [PF-receive-imp-02](./TestScript-hospitalnotification-PF-receive-imp-02.html) | Receive: Patient is admitted, patient is registered as being on leave, patient doesn't return from leave, patient is discharged | STIN, STOR, SLHJ |
| [PF-receive-imp-03](./TestScript-hospitalnotification-PF-receive-imp-03.html) | Receive: Patient is admitted, patient is registered as being on leave, patient returns from leave, patient is registered as dead | STIN, STOR, SLOR, MORS |

