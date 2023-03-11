public with sharing class AccountCTRL {

    @AuraEnabled(cacheable = true)
    public static List<Account> getTopAccounts(){
        return [Select Name, Type, Industry, AnnualRevenue 
                FROM Account 
                WHERE AnnualRevenue != null
                WITH SECURITY_ENFORCED
                ORDER BY AnnualRevenue 
                DESC LIMIT 10];
    }

    @AuraEnabled
    public static List<Account> getAccountsByIndustry(String industry){
        return [Select Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE Industry= :industry
                WITH SECURITY_ENFORCED
                ORDER BY AnnualRevenue DESC];
    }
}