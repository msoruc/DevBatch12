public with sharing class RestCalloutsMock implements HttpCalloutMock {
    public HttpResponse respond (HttpRequest Request){
        if (request.getEndpoint() == 'https://th-apex-http-callout.herokuapp.com/animals' && request.getMethod() == 'GET') {
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}');
            response.setHeader('Content-Type', 'application/json;charset=UTF-8');
            return response;  
        }else if(request.getEndpoint() == 'https://api.instantwebtools.net/v1/airlines' && request.getMethod() == 'GET'){
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setBody('[{"name":"Quatar Airways","country":"Quatar","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/300px-Qatar_Airways_Logo.svg.png","slogan":"Going Places Together","head_quaters":"Qatar Airways Towers, Doha, Qatar","website":"www.qatarairways.com","established":"1994"},{"name":"Singapore Airlines","country":"Singapore","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Singapore_Airlines_Logo_2.svg/250px-Singapore_Airlines_Logo_2.svg.png","slogan":"A Great Way to Fly","head_quaters":"Airline House, 25 Airline Road, Singapore 819829","website":"www.singaporeair.com","established":"1947"}]');
            response.setHeader('Content-Type', 'application/json;charset=UTF-8');
            return response;
        }else if(request.getEndpoint() == 'https://api.onlinewebtutorblog.com/employees' && request.getMethod() == 'GET'){
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setBody('{"error":0,"msg":"data found","data":[{"id":1,"username":"ebahringer","name":"Braulio Luettgen","email":"kaela.turner@example.net","gender":"Female","designation":"Mean Stack Developer","phone_number":"781.322.7616","complete_address":"298 Edythe Harbors Suite 697 Lake Mathiasburgh, MN 28564-6386"},{"id":2,"username":"moore.samanta","name":"Christian Kessler","email":"summer.koepp@example.com","gender":"Male","designation":"Freelancer","phone_number":"509-549-9565","complete_address":"8947 Howell Mountains South Kavon, VT 89670-8443"}]}');
            response.setHeader('Content-Type', 'application/json;charset=UTF-8');
            return response;

        }else if(request.getEndpoint() == 'callout:NC_Dev_Account/services/apexrest/Cases/500Do000000x9j3IAA' && request.getMethod() == 'GET' ){
            // Case newcase = [select id, Origin, Status from Case where id = '500Do000000x9j3IAA' Limit 1 ];
            // String jsonString = JSON.serialize(newcase);
            // Case newcase = new Case();
            // newcase.Status = 'New';
            // newcase.Origin = 'Email';
            // insert newcase;
            // String jsonString = JSON.serialize((newcase));

            
            HttpResponse response = new HttpResponse();
            response.setStatusCode(200);
            response.setStatus('OK');
            response.setBody('{"attributes":[{"type":"Case","url":"/services/data/v56.0/sobjects/Case/500Do000000x9j3IAA"]},"Id":"500Do000000x9j3IAA","Origin":"Email","Status":"New"}');
            response.setHeader('Content-Type', 'application/json;charset=UTF-8');
            return response;

            //[{"attributes":{"type":"Case","url":"/services/data/v56.0/sobjects/Case/500Do000000x9j3IAA"},"Id":"500Do000000x9j3IAA","Origin":"Email","Status":"New"}]

        }else if(request.getEndpoint() == 'https://th-apex-http-callout.herokuapp.com/animals' && request.getMethod() == 'POST'){
            HttpResponse response = new HttpResponse();
            response.setStatusCode(201);
            response.setStatus('OK');
            response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}');
            response.setHeader('Content-Type', 'application/json;charset=UTF-8');
            return response;
        }

        return null;    
        
    }

}