public class OpportunityHandler {
    public static void oppMethod(list<opportunity> triggerNew, Map<id,opportunity> triggerOldMap) {
        for (Opportunity eachOpp : triggerNew){
            if (eachOpp.StageName != triggerOldMap.get(eachOpp.id).StageName) {
                system.debug('description field is ' + eachOpp.Description + 'Opportunity name is ' + eachOpp.Name);
            }
        }
        
    }
}
