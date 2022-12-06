public class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
       //we will create account record using Apex
       //1. create a new instance
       Account acc = new account();

       //2. set field values
       acc.Name='SoftInnovas';

       //DLM
       insert acc;
       system.debug('insterted acc '+acc);
    }

    public static void dmlInsertDemo_cstmObj() {
        salesforce_project__c spNew=new salesforce_project__c();
        spNew.project_name__c = 'Teach DML to Batch12';
        spNew.description__c = 'All of you doing great';
        insert spNew;
    }

    public static void dmlUpdateDemo_1(){
        Account acc= new Account();
        acc.Name = 'SoftInnovas';
        insert acc;

        acc.Name = 'Salesforce Inc.';
        update acc;
        
    }
}
