 //PF-receive-imp-01 - STIN-STOR-SLOR-SLHJ
Instance: HospitalNotification_TestScript_PF-receive-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-01"
* description = "Receive: Patient is admitted, patient is registered as being on leave, patient returns from leave, patient is discharged"
* title = "Receive: Patient is admitted, patient is registered as being on leave, patient returns from leave, patient is discharged - PF-receive-imp-01"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-imp-01" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300/Receive/Fixtures/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(SLHJ, 04, /FHIRSandbox/MedCom/HospitalNotification/v300/Receive/Fixtures/HospitalNotification-fixture-SLOR-SLHJ.xml, destinationUri-SLHJ)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(SLOR, 03, destinationUri-SLOR, bundleid-SLOR)
* insert readMessage(SLHJ, 04, destinationUri-SLHJ, bundleid-SLHJ)

