/*
trigger ContactTrigger2 on Contact (before insert, before update, after insert, after update) {
    if (trigger.isBefore && trigger.isInsert) {
        for (contact eachCnt : trigger.new) {
            if(eachCnt.AccountId != Null){
                system.debug('Contact name: contact created WITH Account');
            }else{
                system.debug('Contact name: contact created WITHOUT Account');
            }
        }
    }
}


 if (Trigger.isBefore) {
        if (Trigger.isUpdate) {
            system.debug('we are in Before update trigger');
            ContactTriggerHandler.updateContactValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            ContactTriggerHandler.updateContactValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }


*/