// Week 4 assignment question 2
map<string, decimal> currISOCodeAndExchangeRateMap = new map<string, decimal>();

currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);

// question 2 part 2
decimal currencyISO = currISOCodeAndExchangeRateMap.get('AUD');
system.debug('Currency ISO code is '+currencyISO);


//question 2 part 3

Boolean convertion = currISOCodeAndExchangeRateMap.containsKey('SAD');
system.debug('Is SAD include ' +convertion);

//question 2 part 4

Set<String> var1 = new Set<String> ();
Set<String> var2 = new Set<String> ();

set<string> currencyNames = currISOCodeAndExchangeRateMap.keySet();

for (string eachCurrencyName : currencyNames){

    if (currISOCodeAndExchangeRateMap.get(eachCurrencyName) >= 1){
        var1.add(eachCurrencyName);
        
        
    }else{
        var2.add(eachCurrencyName);
        
    }

}

system.debug('Currency is bigger then 1 '+var1);
system.debug('other currencies '+ var2);

