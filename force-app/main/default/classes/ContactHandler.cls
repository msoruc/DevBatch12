public class ContactHandler {
    /*
    public static void contactMethod(list<contact> triggerNew) {
        set<id> accIdSet = new set<id>();
        for (contact eachContact : triggerNew) {
          accIdSet.add(eachContact.AccountId);
        }
        list<Account> accList = [select id, phone from account where id = :accIdSet];

        Map<id, account> accMap = new map<id, account>();

            for (Account eachAcc : accList) {
                accMap.put(eachAcc.id, eachAcc);
            }
            for (contact eachCnt : triggerNew) {
                if (accMap.containsKey(eachCnt.Accountid)){
                    eachCnt.OtherPhone = accMap.get(eachCnt.AccountId).Phone;
                }
                
                
            }
    }
    */

    public static void contactMethod2(map<id, contact> triggerNewMap) {
        set<id> accIdSet = triggerNewMap.keySet();    
        list<contact> contList = [select id, otherPhone, accountId, account.phone from Contact where id IN : accIdSet];
        for (contact eachCnt : contList) {
            if(eachCnt.AccountId != Null){
                eachCnt.OtherPhone = eachCnt.account.Phone;
            }
           
        }
        update contList;
    }
}