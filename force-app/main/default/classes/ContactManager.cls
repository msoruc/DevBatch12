@RestResource (urlMapping='/Contact/*')
global with sharing class ContactManager {
    //https://ddo000000hwuima0-dev-ed.develop.my.salesforce.com/003Do000002Ppgo
    
    @HttpGet
    global static Contact contactGet(){
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
            id contactId = uri.substringAfterLast('/');
        Contact con = [select id, LastName, Phone, email, Title, department from Contact where id= :contactId];
        return con;
    }
    
    @HttpPost
    global static Id postContact(String LastName, String Phone, String Email, String Title, String Department){
        Contact cnn = new Contact();
        cnn.LastName = LastName;
        cnn.Phone = Phone;
        cnn.Email = Email;
        cnn.Title = Title;
        insert cnn;
        return cnn.Id;
    }

    @HttpDelete
    global static String deleteContact(){
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
            id contactId = uri.substringAfterLast('/');
        Contact cont = [select id from Contact where id= :contactId];
        delete cont;
        return 'Success';
    }

    @HttpPut
    global static Id putContact(String Id, String LastName, String Phone, String Email, String Title, String Department){
        Contact conts = new Contact();
        conts.Id = Id;
        conts.LastName = LastName;
        conts.Phone = Phone;
        conts.Email = Email;
        conts.Title = Title;
        conts.Department = Department;
        upsert conts;
        return conts.Id;

    }

    @HttpPatch
    global static Contact patchContact(){
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        Contact con = (Contact)JSON.deserialize(body, Contact.class);
        update con;
        return con;
    }

}