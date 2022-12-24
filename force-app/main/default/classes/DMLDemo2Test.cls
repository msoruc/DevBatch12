@isTest
public class DMLDemo2Test {
    @isTest
    private static void dmlInsert1Test() {
        //DML in TEST
        DMLDemo2.dmlInsertDemo_stndObj();//call dml method
        //will it insert record in org?     NO. 

        //it will insert record in Testing world.

        //how to verify then?
        //get the record from testing world.

        //soql -> we cannot get records from org.
            //-> we get the records from TESTING world.
        List<account> listAcc = [select id, name from account where name = 'SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }

    @isTest
    private static void dmlInsert4test() {
        //create account record before calling method.
        //prepare data.
        Account acc = new account();
        acc.name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo2.dmlInsertDemo_4();//will this work?
        //how to verify?
        list<contact> allContacts = [select id, lastname, name from contact where lastname = 'Biden'];
        system.assertEquals('Biden', allContacts[0].LastName);
    }

    @isTest
    private static void dmlInsert5Test() {
        Salesforce_Project__c st = new Salesforce_Project__c();
        st.project_name__c = 'SP test';
        st.Status__c ='New';
        insert st;

        DMLDemo2.dmlInsertDemo_5();

        //to verify, we soql
        list<Salesforce_Ticket__c> listST = [select id, subject__c, salesforce_project__c from Salesforce_Ticket__c WHERE Subject__c = 'Learn apex dml'];
        system.assertEquals(st.id, listST[0].salesforce_project__c);
    }
}