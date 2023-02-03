trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    if (Trigger.isBefore) {
        //AccountTriggerHandler.updateAccountDescription(Trigger.new, trigger.old, trigger.newMap,trigger.oldMap );
    }
    if(Trigger.isAfter && Trigger.isUpdate){
        //call method to update VIP fields of all contacts
        AccountTriggerHandler.updateVIPforContacts(Trigger.new, trigger.old, trigger.newMap,trigger.oldMap );
    }
    /*
    List<account> accTriggerNew = trigger.new;
    List<account> accTriggerOld = trigger.old;
    Map<id, account> accTriggerNewMap = trigger.newmap;
    Map<id, account> accTriggerOldMap = trigger.oldMap;
    //keys means ids of newMap and oldMap are SAME (update)


    if (Trigger.isAfter && Trigger.isUpdate) {
        Set<id> accIds = accTriggerNewMap.keySet();
        //for each loop of set of ids
            //get value of new account using ID from newMap
            //get value of old account using ID from oldMap
        integer countWebsite = 0;
        for (Id eachId : accIds) {
            system.debug('eachId -> ' + eachId);

            account newAccount = accTriggerNewMap.get(eachId);
            system.debug('newAccount name -> ' + newAccount.Name);
            string newWebsite = newAccount.Website;

            account oldAccount = accTriggerOldMap.get(eachId);
            system.debug('oldAccount name -> ' + oldAccount.Name);
            string oldWebsite = oldAccount.Website;

            if (newWebsite != oldWebsite) {
                system.debug('Account ' + newaccount.Name + ', new website is ' + newWebsite);
                countWebsite++;
            }
        }
        system.debug('# account website updated --> ' + countWebsite);
    }
    
    */
    
    /*
    List<account> accTriggerNew = trigger.new;
    List<account> accTriggerOld = trigger.old;
    Map<id, account> accTriggerNewMap = trigger.newmap;
    Map<id, account> accTriggerOldMap = trigger.oldMap;
    //keys means ids of newMap and oldMap are SAME (update)


    if (Trigger.isAfter && Trigger.isUpdate) {
        Set<id> accIds = accTriggerNewMap.keySet();
        //for each loop of set of ids
            //get value of new account using ID from newMap
            //get value of old account using ID from oldMap
        for (Id eachId : accIds) {
            system.debug('eachId -> ' + eachId);

            account newAccount = accTriggerNewMap.get(eachId);
            system.debug('newAccount name -> ' + newAccount.Name);
            string newWebsite = newAccount.Website;

            account oldAccount = accTriggerOldMap.get(eachId);
            system.debug('oldAccount name -> ' + oldAccount.Name);
            string oldWebsite = oldAccount.Website;

            if (newWebsite != oldWebsite) {
                system.debug('Account ' + newaccount.Name + ', new website is ' + newWebsite);
            }
        }
    }

    */
    /*
    List<account> accTriggerNew = trigger.new;
    List<account> accTriggerOld = trigger.old;
    Map<id, account> accTriggerNewMap = trigger.newmap;
    Map<id, account> accTriggerOldMap = trigger.oldMap;
    //keys means ids of newMap and oldMap are SAME (update)


    if (Trigger.isAfter && Trigger.isUpdate) {
        Set<id> accIds = accTriggerNewMap.keySet();
        //for each loop of set of ids
            //get value of new account using ID from newMap
            //get value of old account using ID from oldMap
        for (Id eachId : accIds) {
            system.debug('eachId -> ' + eachId);

            account newAccount = accTriggerNewMap.get(eachId);
            system.debug('newAccount name -> ' + newAccount.Name);

            account oldAccount = accTriggerOldMap.get(eachId);
            system.debug('oldAccount name -> ' + oldAccount.Name);
        }
    }
    */
    
    /*
    list<account> accTriggerNew = trigger.new;
    list<account> accTriggerOld = trigger.old;

    map<id,account> accTriggerNewMap = trigger.newmap;
    map<id,account> accTriggerOldMap = trigger.oldmap;
    
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger new ' + accTriggerNew);
        system.debug('before insert trigger old ' + accTriggerOld);
        system.debug('before insert trigger new map is ' + accTriggerNewMap);
        system.debug('before insert trigger old map is ' + accTriggerOldMap);
    }
    if (Trigger.isAfter&& Trigger.isInsert) {
        system.debug('after insert trigger new ' + accTriggerNew);
        system.debug('after insert trigger old ' + accTriggerOld);
        system.debug('after insert trigger new map is ' + accTriggerNewMap);
        system.debug('after insert trigger old map is ' + accTriggerOldMap);
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger new ' + accTriggerNew);
        system.debug('before update trigger old ' + accTriggerOld);
        system.debug('before update trigger new map is ' + accTriggerNewMap);
        system.debug('before update trigger old map is ' + accTriggerOldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update trigger new ' + accTriggerNew);
        system.debug('after update trigger old ' + accTriggerOld);
        system.debug('after update trigger new map is ' + accTriggerNewMap);
        system.debug('after update trigger old map is ' + accTriggerOldMap);
    }
    */

    /*
    if (Trigger.isAfter && Trigger.isUpdate) {
        for (account oldAcc : Trigger.old) {
            system.debug('old acc id ' + oldAcc.id + ' old acc name is ' + oldAcc.Name);
        }
        for (account newAcc : Trigger.new) {
            system.debug('new acc id ' + newAcc.id + ' new acc name is ' + newAcc.Name);
        }
       
    }
    */
    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger.old is ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert trigger.old is ' + trigger.old);
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before insert trigger.old is ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after insert trigger.old is ' + trigger.old);
    }
    */
    /*
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
    */
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