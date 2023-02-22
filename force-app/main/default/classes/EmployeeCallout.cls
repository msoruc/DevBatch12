public with sharing class EmployeeCallout {
    //Endpoint: https://api.onlinewebtutorblog.com/employees
    //Http Method: POST
    @future(callout=true)
    public static void postEmployee(Id employeeId) {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('POST');

        //1.1 Get Employee detail & prepare the same as json body
        Employee__c employee = [select Username__c, Name, Phone_Number__c, Gender__c, Employee_Name__c, Email__c, Designation__c, Complete_Address__c, Integration_Status__c from Employee__c where id= : employeeId Limit 1];

        
        wrapperEmployee wrap = new wrapperEmployee();
        wrap.complete_address = employee.Complete_Address__c;
        wrap.designation = employee.Designation__c;
        wrap.email = employee.Email__c;
        wrap.name = employee.Name;
        wrap.phone_number = employee.Phone_Number__c;
        wrap.username = employee.Username__c;
        
        String body = JSON.serialize(wrap);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');

        //2. Prepare internet
        Http http = new Http();


        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        employee.Integration_Status__c = Datetime.now() + ' ' + response.getBody() + ' ' + response.getStatus();

        try {
            update employee;
        } catch (Exception ex) {
            system.debug(ex.getMessage());
        }

        
    }

    public class wrapperEmployee{
        public string username;
        public string name;
        public string email;
        public string designation;
        public string phone_number;
        public string complete_address;
    }


}