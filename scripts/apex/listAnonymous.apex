list<string> listStr = new list<string>();
if (listStr.isEmpty()){
    system.debug('list is empy.');
}

listStr.add('some string');
if (!listStr.isEmpty()){
    system.debug('list is not empty');
}

List<integer> listInteger = new list<integer>();
        listInteger.add(10);//0 //indexes will always be integer.
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(15);//4
system.debug('before sort '+listInteger);
listInteger.sort();
system.debug('after sort '+listInteger);