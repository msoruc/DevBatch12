@isTest
public class CaseAssignmentTest {
    @isTest
    private static void caseInsertTest() {
        CaseAssignment.caseInsert();
        list<case> cs = [select id, subject, origin from case where Subject = 'Testcase'];
        system.assertEquals('Testcase', cs[0].Subject);
    }
    
    @isTest
    private static void caseUpdateTest() {
        Case cs1 = new Case();
        cs1.Subject = 'Testcase';
        insert cs1;

        CaseAssignment.caseUpdate();
        list<case> cs2 = [select id,Subject from case where Subject ='Testing case 1']; 

        system.assertEquals('Testing case 1', cs2[0].Subject);
        
    }

    @isTest
    private static void caseDeleteTest() {
        
        case cs3 = new case();
        cs3.Subject = 'Testing case 1';
        insert cs3;

        CaseAssignment.caseDelete();


        list<case> c = [select id,Subject from case where Subject like '%case 1%'] ; 

        system.assertEquals(0,c.size());      
    }
}