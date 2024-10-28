RuleSet: operationDeleteSetup(destinationUri)
* setup[+].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup[=].action[=].operation.type.code = #delete
* setup[=].action[=].operation.resource = #Bundle
* setup[=].action[=].operation.description = "System-generated search and delete operations from conditional delete on Bundle MessageHeader.destination.endpoint"
* setup[=].action[=].operation.accept = #xml
* setup[=].action[=].operation.encodeRequestUrl = true
//* setup[=].action[=].operation.params = "?message.identifier=${{bundleid}}"
* setup[=].action[=].operation.params = "?message.destination-uri=${{destinationUri}}"

RuleSet: operationCreateSetup(type, number)
* setup[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup[=].action[=].operation.type.code = #create
* setup[=].action[=].operation.resource = #Bundle
* setup[=].action[=].operation.description = "Create the Bundle resource in XML format on the destination server."
* setup[=].action[=].operation.accept = #xml
* setup[=].action[=].operation.contentType = #xml
* setup[=].action[=].operation.encodeRequestUrl = true
//* setup[=].action[=].operation.responseId = "create-message-{type}"
* setup[=].action[=].operation.sourceId = "create-{type}-{number}"

RuleSet: operationCreateMessage(type, number)
* test[+].id = "hospitalnotification-create-{type}-{number}" // Update hospitalnotification
* test[=].name = "Create a HospitalNotification {type} Message {number}" 
* test[=].description = "Post HospitalNotification to the server." 
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #create
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Post a Hospitalnotification"
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.responseId = "create-message-{type}"
* test[=].action[=].operation.sourceId = "create-{type}-{number}" 

RuleSet: operationReadMessage(type, number, destinationUri, bundleid)
* test[+].id = "hospitalnotification-read-{type}-{number}" // Update HospitalNotification
* test[=].name = "Get a HospitalNotification {type} Message {number}"
* test[=].description = "GET a Hospital notification. The expected response is a 200(OK) with a payload of the Hospital notification resource in XML format."
* test[=].action[+].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[=].action[=].operation.type.code = #read
* test[=].action[=].operation.resource = #Bundle
* test[=].action[=].operation.description = "Receive Hospital Notification"
* test[=].action[=].operation.accept = #xml
* test[=].action[=].operation.destination = 1
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.origin = 1
* test[=].action[=].operation.params = "?message.destination-uri=${{destinationUri}}&amp;member._id=${{bundleid}}"
