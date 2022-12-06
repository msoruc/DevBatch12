public with sharing class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('create new date instance');

        Date newDate = Date.newInstance(1994, 7, 9);
        system.debug('new date is ' + newDate);
        Date newDate2 = Date.newInstance(2022, 5, 6);
        system.debug('new date 2 is ' + newDate2);
        Date todayDate = date.today();
        system.debug('today\'s date '+todayDate);
    }

    public void printNewTime(){

        Time myTime = Time.newInstance (9, 21, 00, 00);
        system.debug('my time is ' +myTime);

    }

    public void printNewDateTime (){
        Date newDate = date.today();
        Time newTIme = Time.newInstance(2, 15, 45, 55);
        //create new datetime from DATE and TIME
        DateTime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('date and time is ' + dt1);

        //create a new datetime from YEAR, Month, Date
        Datetime dt2 = Datetime.newInstance(2001, 4,14);// Midnight whatever is the user time zone
        system.debug('dt2 is ' +dt2);//printing in GMT

    }
}
