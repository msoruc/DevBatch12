@isTest 
public class SoqlDemo2Test {
    @TestSetup
    static void makeData(){
        account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Energy';

        list<account> listAcc = new list<account> {acc1, acc2, acc3};
        insert listAcc;

        List<Contact> listContact = new List<Contact>();
        for (integer i=0; i<300; i++) {
            contact c = new Contact();
            c.LastName = 'test soql';
            if(i< 100){
                c.AccountId = acc1.id;
            }else if (i <200) {
                c.AccountId = acc2.id;
            }else {
                c.AccountId = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;
    }

   @isTest
   private static void testMethod1() {
    
        Test.startTest();
        SoqlDemo2.soqlChildToParent_1();
        Test.stopTest();
   }

   @isTest
   private static void testMethod2() {
        List<Account> listAcc = [select id, name from account];
        for (account eachAcc : listAcc) {
            eachAcc.type = 'Customer - Direct';
            
        }
        update listAcc;

        List<Opportunity> listOpp = new List<Opportunity>();
        for (integer i=0; i<300; i++) {
            Opportunity op = new Opportunity();
            op.Name = 'test opp';
            op.StageName = 'Closed Won';
            op.CloseDate = date.today();
            if(i< 100){
                op.AccountId = listAcc[0].id;
            }else if (i <200) {
                op.AccountId = listAcc[1].id;
            }else {
                op.AccountId = listAcc[2].id;
            }
            listOpp.add(op);
        }
        insert listOpp;

        Test.startTest();
        SoqlDemo2.soqlParentToChild_1();
        Test.stopTest();
   }

   
}
