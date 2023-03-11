public with sharing class OpportunityCTRL {
    @AuraEnabled(cacheable = true)
    public static List<Opportunity> getTopOpportunities(String stage){
        return [Select Name, Type, Amount, StageName, CloseDate 
                FROM Opportunity
                WHERE StageName = :stage
                AND Amount != null
                WITH SECURITY_ENFORCED //use this security after the Where
                ORDER BY Amount DESC
                LIMIT 5];
    }
}