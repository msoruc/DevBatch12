@isTest
public class CaseTriggerHandlerTest {
    @isTest
    private static void CaseNoPasswordTest() {
        List<Case> listCs = new List<Case>();

        for (integer i=0; i<200; i++){
            Case cs = new Case();
            cs.Priority = 'High';
            cs.Subject = 'Parent Case may contain secret info, do something NOW';
            cs.Description = 'Secret info not allowed in case';
            listCs.add(cs);
        }
        insert listCs;

        List<Case> caseCheck = [select id from Case];
        system.assertEquals(200, caseCheck.size());
    }

    @isTest
    private static void CasePasswordTest() {
        List<Case> listCs = new List<Case>();

        for (integer i=0; i<200; i++){
            Case cs = new Case();
            cs.Priority = 'High';
            cs.Subject = 'Parent Case may contain secret info, do something NOW';
            cs.Description = 'Secret password info not allowed in case';
            listCs.add(cs);
        }
        insert listCs;

        List<Case> caseCheck = [select id from Case];
        system.assertEquals(400, caseCheck.size());
    }


}
