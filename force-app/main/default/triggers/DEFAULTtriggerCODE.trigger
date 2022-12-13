trigger DEFAULTtriggerCODE on Case (before insert, before update, after insert, after update) {

    system.debug('We are in the trigger');

    if(trigger.isBefore){
        system.debug('We are in the Before trigger');
        if(trigger.isInsert){
            system.debug('We are in the Before Insert trigger');
        }
        if(trigger.isUpdate){
            system.debug('We are in the Before Update trigger');
        }
    }
    if(trigger.isAfter){
        system.debug('We are in the After trigger');
        if(trigger.isInsert){
            system.debug('We are in the After Insert trigger');
        }
        if(trigger.isUpdate){
            system.debug('We are in the After Update trigger');
        }
    }
    


}