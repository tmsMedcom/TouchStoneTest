 //PF-send-imp-01 - STIN-STOR-SLOR-SLHJ
Instance: HospitalNotification_TestScript_PF-send-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-imp-01"
* description = "Send: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient."
* title = "Send: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient. - PF-send-imp-01"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-send-imp-01" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)
* insert createMessage(SLHJ, 04, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, discharge-patient-home, IMP, finished, revision, messageHeaderid-SLOR, 4, episodeOfCareID-SLOR)
