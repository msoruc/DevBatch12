public class AssignmentWeek6Handler {
    public static void origin(list<case> caseNew, Map<id, case> triggerOldMap) {
        for(Case eachCase : caseNew){
            if(eachCase.Origin != triggerOldMap.get(eachCase.id).Origin){
            system.debug('Case origin is changed ' + eachCase.CaseNumber);
            }
        }
    }
}
