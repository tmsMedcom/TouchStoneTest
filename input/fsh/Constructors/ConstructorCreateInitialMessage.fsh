RuleSet: createInitialMessage(type, number, fixture, activityCode, encounterClass, encounterStatus, reportOfAdmission)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver den profil, der valideres op mod
*/
* insert profileHospitalNotificationMessage

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {type}, {number})

/* 
Beskriver anvendte variable
*/ 
//* insert variableEncounterResourceIdentifier({type}, {number})
* insert variableMessageHeaderId({type})
* insert variableEpisodeOfCareIdentifier({type})
* insert variableSearchParamIdentifier({type})
* insert variableOccurredDateTime({type})

/* 
Beskriver den operation der udføres i denne test.
*/
* insert operationCreateMessage({type}, {number})

/* 
Beskriver den vurdering der sker af operationen
*/
* insert assertResponseCodeTest
* insert assertPayload
* insert assertMessageHeaderEventCoding
* insert assertEncounterClass({encounterClass})
* insert assertEncounterStatus({encounterStatus})
* insert assertProvenanceActivityCode({activityCode})
* insert assertMessageHeaderReportOfAdmission({reportOfAdmission})
* insert assertProvenanceTarget
* insert assertStructureEpisodeOfCareID
* insert assertMessageHeaderReportOfAdmissionReceiver({reportOfAdmission})


