//access custom settings here
map<string, country_code__c> allCountryCode = country_code__c.getAll();
system.debug('all counrty code --> ' + allCountryCode);

//country name india, code is IND
for (string eachCountry : allCountryCode.keyset()) {
    system.debug('country name is '+eachCountry + ', code is '+ allCountryCode.get(eachCountry).code__c);

}