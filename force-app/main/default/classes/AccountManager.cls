@RestResource(urlMapping='/Account/*')
global with sharing class AccountManager {
    //https://ddo000000hwuima0-dev-ed.develop.my.salesforce.com/services/apexrest/Account/001Do000003DzSs

    @HttpGet
    global static Account getAccount (){
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id accountId = uri.substring(lastIndex +1);
        Account acc = [select id, Name, AnnualRevenue, Description, Phone, Rating, Status__c from Account where id= :accountId];
        return acc;
    }

    @HttpPost
    global static Id postAccount(String Name, String Description, Decimal AnnualRevenue, String Phone, String Rating){
        Account acc = new Account();
        acc.Name = Name;
        acc.Description = Description;
        acc.AnnualRevenue = AnnualRevenue;
        acc.Phone = Phone;
        acc.Rating = Rating;
        insert acc;
        return acc.Id;
    }

    @HttpDelete
    global static String deleteAccount(){
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id accountId = uri.substring(lastIndex +1);
        try{
            Account acc = [select Id from Account where Id= :accountId];
            delete acc;
        }catch(Exception ex){
            return 'Fail';
        }
        return 'Success';
    }

    @HttpPut
    global static Id putAccount (String Name, String Description, Decimal AnnualRevenue, String Phone, String Rating){
        Account acc = new Account();
        acc.Name = Name;
        acc.Description = Description;
        acc.AnnualRevenue = AnnualRevenue;
        acc.Phone = Phone;
        acc.Rating = Rating;
        upsert acc;
        return acc.Id;
    }

    @HttpPatch
    global static Account patchAccount(){
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        Account acc = (Account)JSON.deserialize(body, Account.class);
        update acc;
        return [select Id, Name, Description, AnnualRevenue, Phone, Rating from Account where Id= :acc.Id limit 1];

    }
}