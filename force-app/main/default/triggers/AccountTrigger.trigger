trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    list<account> accTriggerNew = Trigger.new;
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('Before record in after update--> '+ accTriggerNew);
        system.debug('Before Number of Records--> '+ accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            system.debug('Before acc id is-->' + eachAcc.id + 'acc name is--> '+eachAcc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('After record in after update--> '+ accTriggerNew);
        system.debug('After Number of Records--> '+ accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            system.debug('After acc id is-->' + eachAcc.id + 'acc name is--> '+eachAcc.Name);
        }
    }

    /*
    list<account> accTriggerNew = Trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('Before record in after insert--> '+ accTriggerNew);
        system.debug('Before Number of Records--> '+ accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            system.debug('Before acc id is-->' + eachAcc.id + 'acc name is--> '+eachAcc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('After record in after insert--> '+ accTriggerNew);
        system.debug('After Number of Records--> '+ accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            system.debug('After acc id is-->' + eachAcc.id + 'acc name is--> '+eachAcc.Name);
        }
    }
    */
    /*
    if (Trigger.isBefore && Trigger.isInsert){
        system.debug('account before insert trigger called'); 
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account after insert trigger called');
    }

    if (Trigger.isBefore && Trigger.isUpdate){
        system.debug('account before update trigger called'); 
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account after update trigger called');
    }
    */
    /*
    if (Trigger.isInsert){
        system.debug('account before insert trigger called'); 
    }
    if (Trigger.isUpdate) {
        system.debug('account before update trigger called');
    }
    */


    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called'); 
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }
    */
    


}