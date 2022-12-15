public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew, List<Account> accTriggerOld, Map<id, account> accTriggerNewMap,Map<id, account> accTriggerOldMap ) {
        for (Account eachAccount : accTriggerNew) {
            Boolean updateDesc = false;
            if (Trigger.isInsert && eachAccount.Active__c == 'Yes') {
                //eachAccount.Description = 'Account is now Active. Enjoy.';
                updateDesc = true;
            }
            if (Trigger.isUpdate) {
                //get OldAccount value -> using OldMap
                    //get Old active value
                //get newAccount value -> using NewMap
                    //get new active value
                //check if active field is updated TO Yes.
                Account oldAcc = accTriggerOldMap.get(eachAccount.Id);
                Account newAcc = accTriggerNewMap.get(eachAccount.Id);
                if(eachAccount.Active__c == 'Yes' && oldAcc.Active__c != newAcc.Active__c){
                    //eachAccount.Description = 'Account is now Active. Enjoy, celebrate.';
                    updateDesc = True;
                }else{
                    eachAccount.Description = '';
                }

            }
            if(updateDesc){
                eachAccount.Description = 'Account is now Active. Enjoy, celebrate.';
            }
        }
    }
}
