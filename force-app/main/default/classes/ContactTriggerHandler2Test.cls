

@istest
public  class ContactTriggerHandler2Test {
    @TestSetup
    static void makedata(){
        account acc = new account();
        acc.name = 'Ben';
        insert acc;

        contact c = new contact();
        c.LastName = 'Doee';
        c.Fax = '8999';
        c.AccountId = acc.id;
        insert c;
        //data hazir
    }

@istest
private static void m2(){
    contact c = [select id, lastname, accountId, Main_Contact_Person__c, fax from 
    contact];

    c.Main_Contact_Person__c = true;
    update c;
    
    account ac = [select id, name, fax  from account where id = : c.AccountId];
    
    system.assertEquals('8999', ac.fax);

   }
}


/*


@isTest
public class ContactTriggerHandler2Test {
    @isTest 
    private static void testFax(){

        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';
        acc3.Fax = '123'

        List<account> listAcc = new list<account>{acc1, acc2, acc3};

        insert listAcc;

         //create 100  contacts for each account
        List<contact> listContact = new list<Contact>();
        for (Integer i = 0; i < 6; i++) {
            contact c = new contact();
            c.Fax = '123456';
            if (i < 3) {
                c.AccountId = acc1.id;
            } else if (i < 6) {
                c.AccountId = acc2.id;
            } else {
                c.AccountId = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;

        //List<Account> accList = [select id,  Fax, (select id, Fax, Main_Contact_Person__c from Contacts where Main_Contact_Person__c = True limit 1) from Account where id = : acc3.id];

        List<Contact> cntlist = [select id, accountId, Fax from Contact where];

             for(account acc : accList){
                 acc.Fax = acc.Contacts[0].Fax;
    
            }
        
            update accList;
            
            system.assertEquals('123456', accList);

    }


}


*/


/*
        Account acc1 = new account();
        acc1.Fax = '123';

        Contact cnt = new Contact();
        cnt.Fax = '123456';
        cnt.Main_Contact_Person__c = True;
        
        
        List<Account> accList = [select id,  Fax, (select id, Fax, Main_Contact_Person__c from Contacts where Main_Contact_Person__c = True limit 1) from Account where id = : acc1.id];

             for(account acc : accList){
                 acc.Fax = acc.Contacts[0].Fax;
    
            }
        
            update accList;
            
            system.assertEquals('123456', acc1.Fax);

    }
*/    
