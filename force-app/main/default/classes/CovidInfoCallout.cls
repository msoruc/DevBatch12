public with sharing class CovidInfoCallout {
    public static HttpResponse getCovidInfo(){
        //1. Prepare HTTPRequest and wrap all the necessary data in it

        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
        request.setMethod('GET');  //Http Method always UPPERCASE

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HTTPRequest over the internet in order the receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        if (response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            List<wrapperCovidInfo> listCovid = (List<wrapperCovidInfo>)JSON.deserialize(jsonString, List<wrapperCovidInfo>.class);
            wrapperCovidInfo listCovidWrapper = listCovid[0]; 
            List<Covid_Info__c> listInfo = [select id, Name, Positive__c, Negative__c, Pending__c from Covid_Info__c where Received_Date__c = TODAY];
                if (!listInfo.isEmpty()) {
                    listInfo[0].Name = listCovidWrapper.states;
                    listInfo[0].Positive__c = listCovidWrapper.positive;
                    listInfo[0].Negative__c = listCovidWrapper.negative;
                    listInfo[0].Pending__c = listCovidWrapper.pending;
                    update listInfo[0];
                }else{
                    Covid_Info__c obj = new Covid_Info__c();
                    obj.Name = listCovidWrapper.states;
                    obj.Positive__c = listCovidWrapper.positive;
                    obj.Negative__c = listCovidWrapper.negative;
                    obj.Pending__c = listCovidWrapper.pending;
                    insert obj;
                }
                
            }
        return response;
    }

    
    public class wrapperCovidInfo{
        public String states;
        public Integer positive;
        public Integer negative;
        public Integer pending;

    }


}