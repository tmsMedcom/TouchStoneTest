//STIN.A1
Instance: HospitalNotification_TestScript_STIN-A1
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-stin-a1"
* description = "Send: Start hospital stay - admitted, without request for a reportOfAdmission."
* title = "Send: Start hospital stay - admitted - STIN.A1"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-stin-a1" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, false) 
