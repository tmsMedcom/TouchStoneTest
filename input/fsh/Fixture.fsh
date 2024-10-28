/*
PARAM: 
    number: testflow sequent number 
    fixture: Path to fixture
*/

RuleSet: fixtureCreateMessage(fixture, type, number)
* fixture[+].id = "create-{type}-{number}"
* fixture[=].autocreate = false
* fixture[=].autodelete = false
* fixture[=].resource.reference = "{fixture}"