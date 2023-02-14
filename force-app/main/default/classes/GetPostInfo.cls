public with sharing class GetPostInfo {
    public static HttpResponse postPost(){
        //1. Prepare HTTPRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/posts');
        request.setMethod('POST');

        Post__c body = [select Title__c, User_ID__c, Body__c from Post__c where CreatedDate = Today LIMIT 1];
        

        wrapperPost wrap = new wrapperPost();
        wrap.body = body.Body__c;
        wrap.title = body.Title__c;
        wrap.user_id = Integer.valueOf(body.User_ID__c);
        

        request.setBody(JSON.serialize(wrap));
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setHeader('Authorization', 'Bearer 16891bb3897b06ba95287f9037a491c851e48fa838d606c6e3ab8a778b2fb21a');
        

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        if (response.getStatusCode() == 201) {
            system.debug(response.getBody());
        }else{
            system.debug('Something went wrong while creating Post information: ' + response.getBody());
        }
        return response;
    }  
    public class wrapperPost{
        public Integer user_id;
        public String title;
        public String body;

    }  
}