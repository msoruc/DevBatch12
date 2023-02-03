@isTest
public class CaseQueuebleTest {
    @isTest
    private static void caseQueTest() {
        CaseQueueble n = new CaseQueueble();
        Test.startTest(); // starttest and stop test make the asyncronuous jobs to syncronuous.
        
        id jobId = system.enqueueJob(n);

        Test.stopTest();
        case c = [select id, Origin from case];
        system.assertEquals('Web', c.Origin );
    }
}
