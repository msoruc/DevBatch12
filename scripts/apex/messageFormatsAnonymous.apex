//JSAON = JavaScript Object Notation

// 1 student single record

{
    "Name" : "Murat",        // First one is key, always double quotes. If it is Integer use double quotes. Decimal, number Do not Use double quotes
    "Age" : 39,
    "Title" : "Developer",
    "Salary" : 3000.5        // Last line Do Not Use Comma
}


// 2 students detail in JSON format

[
    {
        "Name" : "Murat",        
        "Age" : 39,
        "Title" : "Developer",
        "Salary" : 3000.5  
    }

    {
        "Name" : "Ali",        
        "Age" : 30,
        "Title" : "Admin",
        "Salary" : 2000.54
    }
]

//Get an account record and convert the same into JSON format
list<Account> acc = [select name, type, industry, annualRevenue from Account where AnnualRevenue != null AND Type != null AND Industry != null LIMIT 4];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

//Call Test
RestCallouts.getAnimals();

RestCallouts.getAirlines();

RestCallouts.getEmployees();

RestCallouts.getCasesUsingNC();

RestCallouts.postAnimal();

SoapCallouts.parksCallout('United States');

SoapCallouts.doAdditions(2,3);

SoapCallouts.doMultiplys(2,3);

SoapCallouts.doSubtracts(2,3);

SoapCallouts.doDivides(2,3);

 Case newcase = [select id, Origin, Status from Case where id = '500Do000000x9j3IAA' Limit 1 ];
    String jsonString = JSON.serialize(newcase);
    system.debug(jsonString);

