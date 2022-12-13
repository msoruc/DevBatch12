trigger OpportunityTrigger on Opportunity (before insert, after insert) {
    if(Trigger.isBefore){
        if(trigger.isInsert){
            for (opportunity eachOpp : trigger.new) {
               // system.debug('Opportunity name is ' + eachOpp.Name + ' Closed date is ' + eachOpp.CloseDate + ' amount is ' + eachOpp.Amount);
               system.debug('Opportunity name is ' + eachOpp.Name + ' Stage name is  ' + eachOpp.StageName + ' Description is ' + eachOpp.Description);
            
            }
        }
    }
}