public class ContactTriggerHandler2 {
    public static void updateAccount(List<Contact> trnew, map<id, contact> troldmap){
        set<id> setIds = new set<id>();
        for (contact c : trnew){
            if (c.Main_Contact_Person__c != troldmap.get(c.id).Main_Contact_Person__c && c.Main_Contact_Person__c == True) {
                setIds.add(c.AccountId);
            }
        }
        if (!setIds.isEmpty()){
            updateAccountFax(setIds);
        }
    } 

    public static void updateAccountFax(set<id> setIds){

    list<account> accList = [select id,  Fax, (select id, Fax, Main_Contact_Person__c from Contacts where Main_Contact_Person__c = True limit 1) from Account where id = : setIds];

    for(account acc : accList){
        acc.Fax = acc.Contacts[0].Fax;

    }
    update accList;
    }

    
        public static void updateContactValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
                                        Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
            for (contact eachContact : conTriggerNew) {
                Contact oldContact = conTriggerOldMap.get(eachContact.id);
                //if contact's lead source is 'Partner Referral',
                //then DO NOT ALLOW user to update CONTACT (any field)
                if (oldContact.LeadSource == 'Partner Referral') {
                    eachContact.addError('Cannot update Partner Referral contact');
                }
            }
        }
    
        public static void updateContactValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
                        Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
            for (Contact eachContact : conTriggerNew) {
                if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.Id).LeadSource) {
                    string customMsg = system.label.contactValidation2;
                    eachContact.LeadSource.addError(customMsg);
                }
            }
        }
    }
