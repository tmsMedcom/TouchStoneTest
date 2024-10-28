//RE_STAA
Instance: HospitalNotification_TestScript_RE_STAA
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-staa"
* description = "Send: Update Start hospital stay - acute ambulant"
* title = "Send: Update Start hospital stay - acute ambulant - RE_STAA"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-staa" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true) 
* insert createMessage(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, revise-admit-emergency, EMER, in-progress, revision, messageHeaderid-STAA, 2, episodeOfCareID-STAA)
