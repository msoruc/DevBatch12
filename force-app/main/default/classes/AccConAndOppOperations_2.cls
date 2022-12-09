public class AccConAndOppOperations_2 {
    public static decimal AccConAndOppOperations(){
        decimal n = 0;
        List<Opportunity> sumOfAmount = [select id, amount, stageName, name from opportunity where stageName = 'Closed Won' and amount !=null];

        for (Opportunity eachOpp : sumOfAmount){
            n += eachOpp.Amount;
        }
        system.debug(n);
        return n;
    }
    
    public static list<account> method1 (string stg){
        
        list<account> listacc = [select id, name, phone from ACCOUNT where Id IN (select accountId from Opportunity where stageName = :stg) ];

        system.debug(listacc);
        return listacc;
        
    //long way for mthod1
/*
    List<Account> accountsList = new List<Account>();
    List<opportunity> listOpp=[Select AccountId from opportunity Where StageName = 'Closed Won'and accountId!=null];
    set<id> listId=new set<id>();
    
    for (opportunity opp : listOpp) {
         listId.add(opp.accountId);
    }

     accountsList = [Select Id, Name from Account Where Id In :listId];
     system.debug(listId);
     System.debug('accountsList  '+accountsList.size());

     return listId;

    }
*/

    }

    public static list<account> method2 (){
        list<account> listacc =[select id, name from Account where id IN (select accountId from contact where accountId !=NULL)];
        system.debug(listAcc);
        return listacc;
    }

    public static Contact method3 (id accountId) {
        account acc = [select id, name from account where Id = : accountId ];

        Contact cnt = new contact();
        if (accountId !=null) {
            
            cnt.LastName = acc.Name;
            cnt.AccountId = acc.Id;
            insert cnt;
        }

        system.debug(acc);
        return cnt;
    }


}
