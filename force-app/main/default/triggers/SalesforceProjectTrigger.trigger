trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, after Update, before update) {
    if(Trigger.isAfter && Trigger.isInsert){
        SalesforceProjectHandler.createDefaultTicket(trigger.new);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        SalesforceProjectTriggerHandler.validateSPComplete(Trigger.new, trigger.old, trigger.newMap, trigger.OldMap);
    }

}