@isTest
public with sharing class CaseManagerTest {
    
    @TestSetup
    private static void makeData(){
        List<Case> cases = new List<Case>();
        for (Integer i=0; i<3; i++) {
            Case cs = new Case(Subject='Test Subject' + i, Description='Test Description' + i, Origin='Email');
            cs.Type  = 'Electrical';
            cs.Priority = 'High';
            cs.Status = 'New';
            cases.add(cs);
        }
        insert cases;
        List<Case> insertedCases = [select Id from Case];
        system.assertEquals(3, insertedCases.size());

    }

    @isTest
    private static void postCaseTest(){
        Test.startTest();
        Id caseId = CaseManager.postCase('Subject', 'Description', 'Electrical', 'High', 'New');
        system.assertNotEquals(null, caseId);
        Case cs = [select Id, Subject, Priority From Case Where Id = :caseId];
        System.assertEquals('High', cs.Priority);
        Test.stopTest();

    }

    @isTest
    private static void putCaseTest() {
        Test.startTest();
        //pass null in Id=> Testing insert scenario
        Id caseId = CaseManager.putCase(Null, 'Subject', 'Description', 'Electrical', 'Medium', 'New');
        System.assertNotEquals(null, caseId);
        Case cs1 = [select Id, Subject, Priority from Case Where id= :caseId];
        system.assertEquals('Medium', cs1.Priority);

        //pass valid Id=> Testing update scenario
        Id sameCaseId = CaseManager.putCase(caseId, 'Subject Changed', 'Description', 'Mechanical', 'High', 'In Progress');
        system.assertEquals(caseId, sameCaseId);
        Case cs2 = [select Id, Priority from case where Id = :caseId];
        system.assertEquals('High', cs2.Priority);
        Test.stopTest();
    }

    @isTest
    private static void getCaseTest() {
        Test.startTest();

        //1. Prepare RestRequest
        Case cs =[select Id, Subject, Priority, Status from Case limit 1];
        String homeUrl = system.URL.getSalesforceBaseUrl().toExternalForm();

        RestRequest request = new RestRequest();
        request.httpMethod = 'GET';
        request.requestURI = homeUrl + '/services/apexrest/Case/' + cs.Id;
        //2. Prepare RestContext
        RestContext.request = request;
        //3. Test the business method
        Case objCase = CaseManager.getCase();
        system.assertEquals(cs.Id, objCase.Id);
        system.assertEquals(cs.Subject, objCase.Subject);
        system.assertEquals(cs.Priority, objCase.Priority);
        Test.stopTest();
    }

    @isTest
    private static void deleteCaseTest() {
        Test.startTest();

        //1. Prepare RestRequest
        Case cs =[select Id from Case limit 1];
        String homeUrl = system.URL.getSalesforceBaseUrl().toExternalForm();

        RestRequest request = new RestRequest();
        request.httpMethod = 'DELETE';
        request.requestURI = homeUrl + '/services/apexrest/Case/' + cs.Id;
        //2. Prepare RestContext
        RestContext.request = request;
        //3. Test the business method
        String status = CaseManager.deleteCase();
        system.assertEquals('Success', status);

        //Test execption
        try {
            String status2 = CaseManager.deleteCase();
            system.assertEquals('Fail', status2);
        }catch(Exception ex){
            
        }
        Test.stopTest();

    }

    @isTest
    private static void patchCaseTest() {
        Test.startTest();
        //1. Prepare RestRequest
        Case cs =[select Id, Subject, Description, Priority, Status from Case Limit 1];
        cs.Priority = 'Medium';
        cs.Status = 'In Progress';
        String body = JSON.serialize(cs);

        RestRequest request = new RestRequest();
        request.httpMethod = 'PATCH';
        request.requestBody = Blob.valueOf(body);

        //2. Prepare RestContext
        RestContext.request = request;
        
        //3. Test the business method
        Case objCase = CaseManager.patchCase();
        system.assertEquals('Medium', objCase.Priority);
        system.assertEquals('In Progress', objCase.Status);
        Test.stopTest();
    }
}