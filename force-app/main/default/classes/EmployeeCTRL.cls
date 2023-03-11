public with sharing class EmployeeCTRL {
    
    @AuraEnabled(cacheable = true)
    public static List<Employee__c> employeeFiveAcc(){
        return [Select Name, Email__c, Designation__c, Username__c 
                FROM Employee__c
                ORDER BY CreatedDate DESC
                LIMIT 5];
    }

    @AuraEnabled //if you are going for SEARCH do not use cacheable
    public static List<Employee__c> searchEmployees(String searchKey){
        searchKey = '%' + searchKey + '%';
        return [Select Employee_Name__c, Designation__c, Email__c
                FROM Employee__c
                WHERE Employee_Name__c LIKE : searchKey
                WITH SECURITY_ENFORCED];
    }
}