@isTest
public class CreateTaskOppBatchable2Test {
    @TestSetup
    static void makeData(){
        list<case> listCase = new list<case>();
        for (integer i=0; i<200; i++) {
            case c = new case();
            c.Status = 'New';
            c.Origin = 'Phone';
            listCase.add(c);
        }
        if (!listCase.isEmpty()) {
            Insert listCase;
        }
    }

    @isTest
    public static void case1() {
        Test.startTest();
        CreateTaskCaseBatchable crt = new CreateTaskCaseBatchable();
        Database.executeBatch(crt, 200);
        Test.stopTest();

        list<task> tsk = [select id from Task];
        system.assertEquals(200, tsk.size());
    }
    @isTest
    private static void scheduleTask() {
        Test.startTest();
        TaskSchedulableClass crt = new TaskSchedulableClass();

        string cronex = '0 0 15 1/1 * ? *';
        
        system.schedule('Daily scheduled task', cronex, crt);  
        Test.stopTest();      
    }
     
}
