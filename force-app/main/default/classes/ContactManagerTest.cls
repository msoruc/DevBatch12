@isTest
public with sharing class ContactManagerTest {
    
    @TestSetup
    static void makeData(){
        Contact cnn = new Contact();
        cnn.LastName = 'Mary';
        cnn.Phone = '1234445656';
        cnn.Email = 'mary@gmail.com';
        cnn.Title = 'Mary Company';
        insert cnn;

    }

    @istest
    private static void getContactTes(){
        test.startTest();
        contact c = [select id from contact limit 1];
        string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
        string uri = homeurl + '/services/apexrest/Contact/' + c.id;
        //2.asama request hazirlanmasi
        RestRequest request =  new RestRequest();
        request.requestURI= uri;
        request.httpMethod = 'Get';
        RestContext.request = request;
        Contact c2 = ContactManager.contactGet();
        //system.assertEquals(c.email, c2.email);
        system.assertNotEquals(null,c2.id);
        test.stopTest();
    }

    @istest
    private static void postConTest(){
        Id conid = ContactManager.postContact('Hiji', '4874238', 'h.@gmail.com', 'hh', 'Hi');
        system.assert(conid!=null);
    }


    @isTest
    private static void deleteContactTest() {
        Test.startTest();
        //Prapere URL
        contact c = [select id from Contact LIMIT 1];
        string homeurl = system.Url.getSalesforceBaseUrl().toExternalForm();
        string uri = homeurl + '/services/apexrest/Contact/' + c.Id;

        //Prepare Request
        RestRequest request = new RestRequest();
        RestContext.request = request;
        request.requestURI = uri;
        request.httpMethod = 'DELETE';

        //Prepare Test
        string act = ContactManager.deleteContact();
        system.assertEquals('Success', act);

        Test.stopTest();
    }

    @isTest
    private static void putContactTest() {
        Id conId = ContactManager.putContact(null, 'Hiji', '4874238', 'h.@gmail.com', 'hh', 'Hi');
        system.assertNotEquals(null, conId);

    }

    @isTest
    private static void patchContactTest() {
        Test.startTest();
        //Prepare body
        Contact con = [select id, LastName, Phone, Email, Title, Department from Contact LIMIT 1];
        con.LastName = 'Hello';
        String body = JSON.serialize(con);

        //Prepare RestRequest and RestContext
        RestRequest request = new RestRequest();
        request.httpMethod = 'PATCH';
        request.requestBody = Blob.valueOf(body);
        RestContext.request = request;

        //Prepare Test
        Contact cont = ContactManager.patchContact();
        system.assertEquals('Hello', con.LastName);
        Test.stopTest();
    }
}