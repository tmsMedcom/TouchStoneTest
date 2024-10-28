RuleSet: createInitialMessageDeceased(type, number, fixture, activityCode, encounterClass, encounterStatus, reportOfAdmission, deceased)

/* 
Dette er en constructor. Som opretter en meddelelse. Her vil vi blot test om patienten er korrekt angivet som 'deceased' 
*/
* insert createInitialMessage({type}, {number}, {fixture}, {activityCode}, {encounterClass}, {encounterStatus}, {reportOfAdmission})
/* 
Beskriver den vurdering der sker af operationen. 
*/
* insert assertPatientDeceased({deceased})

