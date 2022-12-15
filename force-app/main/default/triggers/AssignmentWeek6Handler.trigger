trigger AssignmentWeek6Handler on Opportunity (before insert, after insert, before update, after update) {
   if(trigger.isBefore && trigger.isUpdate){
      for (Opportunity eachOpp : trigger.new){
         system.debug('name is ' + eachOpp.name + ' amount is ' + eachOpp.Amount);
         system.debug('id is ' + eachOpp.id);
         system.debug('old name is' + trigger.oldMap.get(eachOpp.id).name + ' amount is ' + trigger.oldMap.get(eachOpp.id).Amount);
      }
   }
}