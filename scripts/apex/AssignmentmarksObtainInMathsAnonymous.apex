map<string, integer> marksObtainInMaths = new map<string, integer>();
marksObtainInMaths.put('0111CE112',40);
marksObtainInMaths.put('0111CE102',19);
marksObtainInMaths.put('0111CE100',33);
marksObtainInMaths.put('0111CE098',40);
system.debug('Marks and Optains Maths --> '+marksObtainInMaths);

marksObtainInMaths.put('0111CE055',30);
marksObtainInMaths.put('0111CE089',40);
system.debug('Marks and Optains Maths --> '+marksObtainInMaths);

Set<String> studentRollNumber = marksObtainInMaths.keySet();
system.debug('Student Roll Numbers--> '+ studentRollNumber);

list<integer> marksOptained = marksObtainInMaths.values();
system.debug('Marks Optined--> '+marksOptained);

for (integer eachNumber : marksOptained){
    if(eachNumber <20){
        system.debug(eachNumber+ ' is not qualified for next class');
    }
}
