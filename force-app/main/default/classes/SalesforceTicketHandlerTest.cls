@isTest
public class SalesforceTicketHandlerTest {
    @isTest 
    private static void testTicket() {
        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.Project_Name__c = 'SP test1';
        sp1.Status__c = 'New';
        sp1.Description__c = 'test';
  
        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'SP test2';
        sp2.Status__c = 'Completed';
        sp2.Description__c = 'test';
  
        List<Salesforce_Project__c> eachSP = new List<Salesforce_Project__c>{sp1, sp2};
        insert eachSP;
  
        set<id> spIds = new set<id> {sp1.id, sp2.Id};      
        
/*
        Test.startTest();
        SalesforceTicketHandler.spCompletedStatus();
        Test.stopTest(); //this will ensure our future method is completed

        //assert.
        List<Salesforce_Project__c> allSP = [select id, status__c from Salesforce_Project__c where status__c = 'Completed'];
        system.assertEquals(True, allSP[0].Status__c.contains('Completed'));


 */

        Test.startTest();
        SalesforceTicketHandler.completeAllTickets(spIds);
        Test.stopTest(); //this will ensure our future method is completed

        //assert.
        List<Salesforce_Ticket__c> allSP = [select id, status__c from Salesforce_Ticket__c where status__c = 'Completed'];
        system.assertEquals(True, allSP[0].Status__c.contains('Completed'));
    }   
   
}
