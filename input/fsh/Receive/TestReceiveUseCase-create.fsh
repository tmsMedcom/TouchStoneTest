//Get STIN
Instance: HospitalNotification_TestScript_receive-STIN-A1
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-stin-a1"
* description = "Receive: Start hospital stay - admitted, without request for reportOfAdmission"
* title = "Receive: Start hospital stay - admitted, without request for reportOfAdmission - STIN"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-stin-a1" 
* name = "HospitalNotificationTestScript"
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Receive/Fixtures/HospitalNotification-fixture-STIN-A1.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
