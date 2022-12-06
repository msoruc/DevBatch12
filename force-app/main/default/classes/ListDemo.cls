public class ListDemo {
    public static string candidatesList(integer i) {
        List<string> listCandidates = new list<string>();
        listCandidates.add('Marc'); //0
        listCandidates.add('Elon'); //1
        listCandidates.add('Bill'); //2
        listCandidates.add('Marc'); //3
        system.debug('list of candidates is ' + listCandidates);
        string returnString = '';
        integer sizeOfList = listCandidates.size();
        
        if(i >= 0 && i < sizeOfList){
            returnString = listCandidates[i];
        } else {
            returnString = 'No values found. stay in limits';
        }
        return returnString;
    }
    public static void randomIntegerList() {
        List<integer> listInteger = new list<integer>();
        listInteger.add(10);//0 //indexes will always be integer.
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(15);//4

        integer valueAt3index = listInteger.get(3);
        //or
        integer valueAt3index2 = listInteger[3];
        system.debug('random integer list is ' + listInteger);
        system.debug('value at index 3 is ' + valueAt3index);
    }

    public static void allCats(){
        list<Cat> listCat = new list<Cat>();
        //we can add instance of CAT
        Cat batch12Cat = new Cat('garfield','white');
        Cat batch12Cat2 = new Cat('simba','brown');
        Cat batch12Cat3 = new Cat('blackpaper','black');
        listCat.add(batch12Cat);
        listCat.add(batch12Cat2);
        listCat.add(batch12Cat3);
        listCat.add(batch12Cat);
        system.debug('list of cats '+listCat);
    }
}