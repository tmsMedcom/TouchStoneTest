RuleSet: createMessage(type, number, fixture, activityCode, encounterClass, encounterStatus, role, messageHeaderid, countProvenances, episodeOfCareID)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {type}, {number})

/* 
Beskriver den profil, der valideres op mod
*/
* insert profileHospitalNotificationMessage

/* 
Beskriver anvendte variable
*/
//* insert variableEncounterResourceIdentifier({type}, {number})
* insert variableMessageHeaderId({type})
* insert variableEpisodeOfCareIdentifier({type})
//* insert variableSearchParamIdentifier({type})

/* 
Beskriver den operation der udføres i denne test.
*/
* insert operationCreateMessage({type}, {number})

/* 
Beskriver den vurdering der sker af operationen.
*/
* insert assertResponseCodeTest
* insert assertPayload
* insert assertMessageHeaderid({messageHeaderid})
* insert assertMessageHeaderEventCoding
* insert assertProvenanceEntityRole({role})
* insert assertEncounterClass({encounterClass})
* insert assertEncounterStatus({encounterStatus})
* insert assertProvenanceActivityCode({activityCode})
* insert assertProvenanceTarget
* insert assertProvenanceEntityCount({countProvenances})
* insert assertEpisodeOfCareID({episodeOfCareID})
//* insert assertOccurredTimeStamp({occurredDateTime})