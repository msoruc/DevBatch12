//Week 4 question 6

map<string, integer> StudentRank = new map<string, integer>();
StudentRank.put('Alex Lee', 1 );
StudentRank.put('German Joy', 2 );
StudentRank.put('Brian Kay', 3 );
StudentRank.put('Mary Sosa', 4 );

set<string> studentNames = StudentRank.keyset();
for (string eachName : studentNames){
    integer rank = StudentRank.get(eachName);
    system.debug(' Student name '+ eachName +' Rank is ' + rank);
}