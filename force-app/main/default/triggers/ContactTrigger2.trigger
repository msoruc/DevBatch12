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