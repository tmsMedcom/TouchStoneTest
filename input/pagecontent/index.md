### Background

> Describe the purpose of the IG

Both test scripts and test examples are developed by MedCom. For more information, please click on the tabs above.

#### Relevant information

> Include relevant links. E.g:

The following pages might be of interest when implementing HospitalNotification:
* [GitHub-pages for HospitalNotification](https://medcomdk.github.io/dk-medcom-hospitalnotification)
  * [Testprotocol for sending and receiving HospitalNotification](https://medcomdk.github.io/dk-medcom-hospitalnotification/#2-test-and-certification)
* [Implementation Guide for HospitalNotification v. 3.0.0](https://medcomfhir.dk/ig/hospitalnotification/3.0.0)
* [Governance for MedCom FHIR messaging](https://medcomdk.github.io/MedComLandingPage/)

### Governance
A description of <a href="https://medcomdk.github.io/MedComLandingPage/#4-change-management-and-versioning">governance concerning change management and versioning of MedComs FHIR artefacts, can be found on here</a>.

#### Download
Content in this IG can be downloaded under [Download](downloads.html). The download includes both test scripts and test examples. It is also possible to download each artifact, on the individual page.

#### Quality Assurance Report

> Describe the errors

In the Quality Assurance report (QA-report) for this IG there are some errors and warnings. An instance of the errors are: *Unable to resolve resource with reference '/FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR.xml* and *Unable to resolve resource with reference 'http://medcomfhir.dk/ig/hospitalnotification/StructureDefinition/medcom-hospitalNotification-message'*. The errors occur when creating a test script, as the fixture and profile are not reachable in the IG. However, they are reachable from TouchStone, why it is of less concern. For vendors who uses the test scripts locally should be aware of the error and e.g. create the fixtures and define the profile locally.

#### Contact
<a href="https://www.medcom.dk/">MedCom</a> is responsible for this IG.

If you have any questions, please contact <a href="mailto:fhir@medcom.dk">fhir@medcom.dk</a> or write to MedCom’s stream in <a href="https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup">Zulip</a>.