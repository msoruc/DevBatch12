trigger EmployeeTrigger on Employee__c (after insert) {
   if(trigger.isInsert && trigger.isAfter){
        EmployeeCallout.postEmployee(trigger.new);
   }   

}