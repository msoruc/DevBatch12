// Week 4 Question 4 Part 1

public class AccConAndOppOperations {
    public static list<account> method1(){
        List<Account> listOfAcc = [select id, name, annualrevenue, type, accountSource from account ];
        system.debug('All Accounts '+listOfAcc);
        return listOfAcc;
    }
//Question 4 Part 2
    public static void method2(string lead, string stage){
        List<Opportunity> listOfOpp = [select id, name, stagename, leadsource from Opportunity where leadsource = :lead and stagename = :stage ];
        system.debug(listOfOpp);

    }
// Question 4 Part 3
    public static void method3(string stg, string typ){
        //list<account> listOfAccount = [select id, name, annualrevenue, type (select id, name, amount, stagename from Opportunities where stagename='Closed Won') from account where Type='Customer - Direct'];

        list<account> listOfAcc=[Select id, name, annualrevenue,type, (select id, name, amount, stageName from opportunities where StageName =: stg) from account where type =: typ];

        for (Account eachAcc : listOfAcc){

            system.debug('Each account annual revenue' +eachAcc.AnnualRevenue);
            system.debug('each account is ' +eachAcc);

            for(Opportunity eachOpp : eachAcc.Opportunities){

                system.debug('each opportunity amount is ' +eachOpp.amount);

                system.debug('Each Opportuniy '+ eachOpp);
            }
        }

    }



//Question 4 Part 4


}


// APEX Part
//AccConAndOppOperations.method1();
//AccConAndOppOperations.method2('Web', 'Closed Lost');
//AccConAndOppOperations.method3('Closed Won', 'Customer - Direct');
