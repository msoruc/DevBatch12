//update the access modifier from public to global
//annotate the class @RestResource(urlMapping='/...../*')
@RestResource(urlMapping='/Case/*') 
global with sharing class CaseManager {
    //https://ddo000000hwuima0-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Do000001cOFe

    @HttpGet
    global static Case getCase(){
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex+1);
        Case cs =[select Id, CaseNumber, Subject, Description, Type, Priority, Status from Case WHERE Id = :caseId];
        return cs;
    }

    @HttpPost
    global static Id postCase(String Subject, String Description, String Type, String Priority, String Status){
        Case cs = new Case();
        cs.Subject = Subject;
        cs.Description = Description;
        cs.Type = Type;
        cs.Priority = Priority;
        cs.Status = Status;
        insert cs;
        return cs.Id;

    }

    @HttpDelete
    global static String deleteCase(){
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex+1);
        try{
            Case cs =[select Id from Case WHERE id= :caseId];
            delete cs;
        }catch(Exception ex){
            return 'Fail';
        }
        return 'Success';
    }

    @HttpPut
    global static Id putCase(String Id, String Subject, String Description, String Type, String Priority, String Status){
        Case cs = new Case();
        cs.Id = Id;
        cs.Subject = Subject;
        cs.Description = Description;
        cs.Type = Type;
        cs.Priority = Priority;
        cs.Status = Status;
        upsert cs;
        return cs.Id;

    }

    @HttpPatch
    global static Case patchCase (){
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        Case cs = (Case)JSON.deserialize(body, Case.class);
        update cs;
        return [select Id, Subject, Description, Priority, Status from Case where Id = :cs.Id Limit 1];
    }

}