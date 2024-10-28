//AN_STAA
Instance: HospitalNotification_TestScript_AN_STAA
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-an-staa"
* description = "Send: Cancellation Start hospital stay - acute ambulant"
* title = "Send: Cancellation Start hospital stay - acute ambulant - AN_STAA"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-an-staa" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true) 
* insert createMessage(AN-STAA, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, cancel-admit-emergency, EMER, entered-in-error, removal, messageHeaderid-STAA, 2, episodeOfCareID-STAA)

