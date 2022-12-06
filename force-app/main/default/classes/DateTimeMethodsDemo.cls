public with sharing class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        //my birthdate
        date birthDate = date.newInstance(1984, 9, 14);

        Date todayDate = date.today();

        integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('My age in months is '+ ageInMonths);
    }

    public void calculateAgeInDays(){
        date birthDate = date.newInstance(1984, 9, 14);

        Date todayDate = date.today();

        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('My age in days is '+ ageInDays);
    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug(' Subscription End Date is '+ subscriptionEndDate);

        Integer endDateYear = subscriptionEndDate.year();
        system.debug('End date year is '+endDateYear);
        
        Integer endDateMonth = subscriptionEndDate.month();
        system.debug('End date month is '+endDateMonth);


        date pastSubscriptionDate = subscriptionStartDate.addDays(-1000);
        system.debug(' If subscription ended today, then it started on '+pastSubscriptionDate);

    }

    public void printOfferEndDateTime(){

        dateTime dtNow = datetime.now();
        dateTime offerEndDateTime = dtNow.addHours(51);
        system.debug('Offer end time '+ offerEndDateTime);

    }

    public void birthdateInMilliseconds(){
        datetime birthDate = datetime.newInstance(1984, 9, 14, 8, 0, 0);

        long longBirthDate = birthDate.getTime();
        system.debug(' My birthdate is in milliseconds ' + longBirthDate);
    }
}
