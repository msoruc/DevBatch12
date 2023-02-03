public  class SalesforceTicketHandler {
 
   
    public static void spCompletedStatus(list<salesforce_project__c> spTriggerNew, list<salesforce_project__c> spTriggerOld, map<id, salesforce_project__c> spTriggerNewMap, map<id, salesforce_project__c> spTriggerOldMap) {
        //get set id from which project 'status' is changed to completed
        //compare old and new to get if status is completed
        
        set<id> spIds = new set<id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
           if (eachSP.Status__c == 'Completed' && eachSP.Status__c != spTriggerOldMap.get(eachSP.Id).Status__c) {
                spIds.add(eachSP.id);
            
        }
        //call future method to update all its tickets
        //call b

        if (!spIds.isEmpty()) {
           completeAllTickets(spIds);
         }
   }

   



    @future  //b
    public static void completeAllTickets(set<id> spIds) {
        //get all tickets which are not completed
        List<Salesforce_Ticket__c> allST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
        where Salesforce_Project__c in :spIds and status__c != 'Completed'];
        // set status as completed
        for (salesforce_ticket__c eachST : allST) {
            eachST.status__c = 'Completed';
        }
        update allST;
       //update all tickets
   }
 }
}