SetDemo.citySet();
SetDemo.randomIntegerSet();

list<integer> listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(20);
listInteger.add(10);
listInteger.add(30);
listInteger.add(1);
listInteger.add(15);
set<integer> setInteger = SetDemo.setFromList(listInteger);
system.debug('set  '+setInteger);

set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Istanbul');
        cities.add('Ankara');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Berlin');
set<string> upperCaseCities = SetDemo.upperCaseSet(cities);
system.debug('cities are '+upperCaseCities);