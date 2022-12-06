RankHandler rk = new RankHandler();
string p1 = rk.rankPrize(1);
system.debug('p1 is ' + p1);

string p2 = rk.rankPrize(2);
system.debug('p2 is ' +p2);

string p3 = rk.rankPrize(6);
system.debug('p3 is ' +p3);


string p4 = rk.rankPrizeSwitch(1);
system.debug('p1 is ' + p4);

string p5 = rk.rankPrizeSwitch(2);
system.debug('p2 is ' +p5);

string p6 = rk.rankPrizeSwitch(6);
system.debug('p3 is ' +p6);





/*

string s = '';

//s is blank --> string is BLANK.
//s is NOT blank --> value of s.

if(string.isBlank(s)){
    system.debug('String is BLANK. Come on.');
} else {
    system.debug(s);
}


if(s == ''){
    system.debug('String is still BLANK. Come onnnn.');
} else {
    system.debug(s);
}

*/