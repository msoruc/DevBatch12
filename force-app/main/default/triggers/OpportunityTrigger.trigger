trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update, after delete, after undelete) {

    set<id> accIds = new Set<Id>();
    
        if(Trigger.isAfter){
            
            if(trigger.isInsert || trigger.isUndelete){
            for (opportunity op : trigger.new) {
                if (op.AccountId != Null && op.Amount != Null) {
                    accIds.add(op.AccountId);
                }
            } 
        }   
            if (trigger.isUpdate) {
                    for (Opportunity op2 : trigger.new){
                        if (op2.AccountId != trigger.oldMap.get(op2.id).AccountId || op2.StageName != trigger.oldMap.get(op2.Id).StageName || op2.Amount != trigger.oldMap.get(op2.Id).Amount) {
                            accIds.add(op2.AccountId);
                        }
                    }
                }
            if (trigger.isDelete) {
                    for (opportunity op3 : trigger.old) {
                        if (op3.AccountId != Null && op3.Amount != Null) {
                            accIds.add(op3.AccountId);
                        }
                    }
                }
            }
        
    if (!accIds.isEmpty()) {
        OpportunityTriggerHandler.updateHighestAmount(accIds);
        OpportunityTriggerHandler.updateTargetAmountAchOppName(accIds);
        OpportunityTriggerHandler.updateTotalAmountGenerated(accIds);
    }
    










    // if(Trigger.isBefore){
    //     if(trigger.isInsert){
    //         for (opportunity eachOpp : trigger.new) {
    //            // system.debug('Opportunity name is ' + eachOpp.Name + ' Closed date is ' + eachOpp.CloseDate + ' amount is ' + eachOpp.Amount);
    //            system.debug('Opportunity name is ' + eachOpp.Name + ' Stage name is  ' + eachOpp.StageName + ' Description is ' + eachOpp.Description);
            
    //         }
    //     }
    // }
}