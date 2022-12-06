public class Datetime_Assignment {
    public void diffofDate(){
        date varTomorrowDate = date.newInstance(2022, 11, 17);
        date varTodaysDate = date.newInstance(2022, 11, 16);
        Integer dateDiff = varTomorrowDate.daysBetween(varTodaysDate);
        system.debug('Difference is between tomorrow and yesterday is ' + dateDiff);

    }

    public void varTomorrowDatetime(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2022, 11, 17, 7, 0, 0);
        system.debug('Tomorrow/s date is  ' + varTomorrowDatetime);
        Datetime var10DaysDatetime = Datetime.newInstanceGmt(2022, 11, 27, 9, 0, 0);
        system.debug('Date after 10 days ' + var10DaysDatetime);
        Long varDatetimeLong = 12339874361L;
        Datetime newTomorrowDatetime = varTomorrowDatetime.addDays(7);
        system.debug('Adding 7 days to tomorrow date ' + newTomorrowDatetime);
        Datetime new10Days = var10DaysDatetime.addDays(10);
        system.debug('New 10Days date is ' + new10Days);

    }

    public void cityInformation(){
        Datetime country = Datetime.newInstance(1923, 4, 23, 7, 0, 0);
        system.debug(country);

    }


    public void mariaCurie(){
        date mariaBirtDate = date.newInstance(1867, 11, 7);
        date todayDate = date.today();
        Integer dateDiff = mariaBirtDate.daysBetween(todayDate);
        integer herAge = dateDiff / 365;
        system.debug('Maria is  ' + herAge + ' years old');

    }

    public void MathPractice(){
        
    }

}
