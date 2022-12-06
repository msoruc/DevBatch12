public class December1stAssignment {
    public static void contactQuery(){
            List<Contact> lstContact = [select id, name, accountId, account.name from contact];
            for (Contact eachContact : lstContact){
                string account_Id = eachContact.AccountId;
                string account_Name = eachContact.account.name;
                system.debug('account id is--> '+ account_Id+ ' account name is --> '+ account_Name);

            }
    }
    public static void getContactInfo(){
        list<account> lstAccount = [select id, name, (select id, name from contacts) from account];

        for (Account eachAccount : lstAccount){
            list<Contact> listContact = eachAccount.contacts;
            for(Contact eachContact : listContact){
                string contact_Name = eachContact.name;
                string contact_Id = eachContact.id;
                system.debug('account id is--> '+ contact_Id+ ' account name is --> '+ contact_Name);
            }
        }
    }
}
