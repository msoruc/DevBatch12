public with sharing class EmployeeCalloutHandler {
    public static void afterinsert(List<Employee__c> newEmployee) {
        for (Employee__c employee : newEmployee){
            EmployeeCallout.postEmployee(employee.Id);
            
        }
    }
}