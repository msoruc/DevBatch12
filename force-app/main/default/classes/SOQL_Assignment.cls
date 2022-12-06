public class SOQL_Assignment {
   public static void soql_WhereClause(){
    List<Contact> lstContact = [select id, lastname from contact where LastName like '%a%'];
    system.debug(lstContact);
    system.debug('size of the variable--> '+lstContact.size());
   }
   public static void soql_formethod(){
    List<Contact> lstcontact = [select lastname, phone from Contact];
    system.debug('all contact lastname and phone# --> '+lstcontact);

    for (Contact eachName : lstcontact){
        string contactLastName = eachName.LastName;
        string contactPhone = eachName.Phone;
        system.debug('Contacts last name is --> '+ contactLastName+ ' contacts phone number is --> '+ contactPhone);
    }
   }
}
