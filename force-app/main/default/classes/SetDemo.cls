public class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Istanbul');
        cities.add('Ankara');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Berlin');

        system.debug('cities are '+cities);
    }

    public static void randomIntegerSet(){
        set<integer> integerSet = new set<integer>();
        integerSet.add(10);
        integerSet.add(20);
        integerSet.add(45);
        integerSet.add(19);
        integerSet.add(10);
        integerSet.add(10);
        system.debug('integer set '+integerSet);
    }

    public static set<integer> setFromList(List<integer> intList){
        set<integer> setint = new set<integer>();
        setInt.addAll(intList);
        return setint;
    
    }   

    public static set<string> upperCaseSet(set<string> setStr){
        set<string> returnSet = new Set<string>();

        for (string eachString : setStr){
            string tempStr = eachString.toUpperCase();
            returnSet.add(tempStr);
        }

        return returnSet;
    }


}