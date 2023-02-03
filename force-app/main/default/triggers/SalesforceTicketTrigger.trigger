trigger SalesforceTicketTrigger on Salesforce_Project__c (before insert, after insert, after Update, before update) {
    if(Trigger.isAfter && Trigger.isUpdate){
        //call method
        //call method a)
        SalesforceTicketHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
    }
}