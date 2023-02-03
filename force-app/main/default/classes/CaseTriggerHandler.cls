public class CaseTriggerHandler{
public static void createCase(List<case> triggerNew) {

    set<id> caseIds = new set<id>();
    // string checkKey = 'password';

    for (case eachCase : triggerNew) {
        if (eachCase.Description.containsIgnoreCase('password')) {
            caseIds.add(eachCase.id);                               
        }            
    }

    List<case> listCase = new List<case>();

    for(id eachId: caseIds){

        case c = new case();                        
        c.priority = 'High';                
        c.Subject = 'Parent Case may contain secret info, do something NOW';                
        c.Description = 'Secret info not allowed in case';
        c.parentId = eachId; 

        listCase.add(c);
    }
    if(!listCase.isEmpty()){
        insert listCase;
    }       
    
}
}