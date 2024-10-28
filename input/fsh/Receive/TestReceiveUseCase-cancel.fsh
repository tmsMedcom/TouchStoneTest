//Get AN-STIN
Instance: HospitalNotification_TestScript_receive-AN-STIN
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-stin"
* description = "Receive: Cancellation Start hospital stay"
* title = "Receive: Cancellation Start hospital stay - AN-STIN"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-stin" 
* name = "HospitalNotificationTestScript"
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(AN-STIN, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Receive/Fixtures/HospitalNotification-fixture-AN-STIN.xml, destinationUri-AN-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(AN-STIN, 02, destinationUri-AN-STIN, bundleid-AN-STIN)
