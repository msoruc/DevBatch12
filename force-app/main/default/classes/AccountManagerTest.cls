@isTest
public with sharing class AccountManagerTest {
    @TestSetup
    private static void makeData(){
     list<account> aclist= new list<account>();
     for(integer i=0; i<3; i++){
         Account ac = new account();
         ac.name = 'Test Accounmanager ' + i;
         ac.phone = '47837322';
         aclist.add(ac);
     }
     insert aclist;
     list<account> insertedacc = [select id from account];
     system.assertEquals(3, insertedacc.size());
    }

    @istest
    private static void postAccountTest(){
        test.startTest();
            Id acid = AccountManager.postAcc('NewAc','Industry', '78477');
        system.assertNotEquals(null, acid);
        account ac = [select id, name, type, AccountNumber from Account where id = :acid];
        system.assertEquals('NewAc',ac.name);
        test.stopTest();
    }

    @istest
    private static void putAccTest(){
        test.startTest();
        Id acid = AccountManager.upsertAccount(null, 'Testimbenimacmanager', 'Prospecting');
        system.assertEquals(null,acid);
        account ac2= [select id, name, type from account where id = :acid];
        system.assertEquals('Testimbenimacmanager',ac2.name);

        //pass null in Id=> testing insert scenario
        Id sameCaseid = AccountManager.upsertAccount(acid, 'Testimbenimacmanager changed', 'Customer-Direct');
        system.assertEquals(acid, sameCaseid);
        account ac3 = [select id, name, type from account where id = :acid];
        system.assertEquals('Customer-Direct', ac3.type);
        test.stopTest();
    }
        
    @istest
    private static void getAccTest(){
            //prepare restcontext
            //test the business method
            test.startTest();
        account acc = [select id from account limit 1];
            //preapre rest request
        string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
        RestRequest request = new restrequest();
        request.httpMethod = 'Get';
        request.requestURI = homeurl + '/services/apexrest/Account/' + acc.id;
        RestContext.request = request;
        account acs = AccountManager.getAccount();
        system.assertEquals(acc.Id, acs.Id);
        system.assertEquals(acc.type, acs.type);
        system.assertEquals(acc.name, acs.name);
        test.stopTest();
    }

 @istest
    private static void deleteAcctest(){
        test.startTest();
        //1. asama prepare RestRequest
        account a = [select id, name, type from account limit 1];
        string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
        RestRequest request  = new RestRequest();
        request.httpMethod = 'DELETE';
        request.requestURI = homeurl + '/services/apexrest/Account' + a.Id;

        //2.asama RestContext prepare
        RestContext.request = request;

        //3. asama Method testi yapilir
        string result = AccountManager.deleteAccount();
        system.assertEquals('Success', result);
        test.stopTest();
    }

 @istest
    private static void patchTest(){
        test.startTest();
        //1. asama 
        account accc = [select id, name , type from account limit 1];
        accc.name = 'Benim';
        accc.type = 'Prospecting';
        string body = JSON.serialize(accc);

         //2. asama
        RestRequest request = new RestRequest();
        request.httpMethod = 'Patch';
        request.requestBody = Blob.valueOf(body);
        RestContext.request = request;

        //3. asama 
        account ac = AccountManager.patchAccount();
        system.assertEquals('Benim', accc.name);
        system.assertEquals('Prospecting', accc.Type);
        test.stopTest();
    }
}