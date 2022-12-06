public with sharing class PrimitiveDataTypeDemo3 {
    public void printNewDateTime(){
        Datetime dt3 = datetime.newInstance(2021, 7,9,10,11,9);
        system.debug('dt3 is ' + dt3);//gmt zone

        //create new datatime with LONG (miliseconds
        Datetime dt4 = datetime.newInstance(0);
        //1970 Jan 1 000000 + miliseconds ==> new datetime
        system.debug('dt4 is '+ dt4);
        Datetime dt4_1 = datetime.newInstance(300000);
        system.debug('dt4_1 is '+dt4_1);
        long longTime = 113123212312l;
        Datetime dt4_2 = datetime.newInstance(longTime);
        system.debug('dt 4.2 is ' +dt4_2);

        //current datetime
        datetime dt6 = datetime.now();
        system.debug('dt6 is ' + dt6 );

        // 5. gmt 
        datetime dt5 = datetime.newInstanceGmt(1999, 5, 6, 7, 8, 10);
        system.debug('dt 5 is '+ dt5);
        
    }
}
