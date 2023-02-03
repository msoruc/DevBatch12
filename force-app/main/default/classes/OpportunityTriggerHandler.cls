public class OpportunityTriggerHandler {
    @future
    public static void updateHighestAmount(set<id> setIds) {
        List<Account> listAcc = [select id, name, Highest_Amount_Opportunity_Name__c, (select id, name, AccountId from Opportunities where Amount != Null ORDER BY Amount DESC) from Account where id IN : setIds];

        for (account acc : listAcc) {
            if (acc.opportunities.size() > 0 ) {
                acc.Highest_Amount_Opportunity_Name__c = acc.Opportunities[0].Name;
            }else{
                acc.Highest_Amount_Opportunity_Name__c = Null;
            }
        }
        update listAcc;
    }

    @future
    public static void updateTargetAmountAchOppName(set<id> accIds){
        list<account> listAcc1 =[Select id, name, Target_Amount__c, Target_Amount_Achieved_Opportunity_Name__c, Highest_Amount_Opportunity_Name__c,(Select id, name, AccountId, amount from opportunities where stageName = 'Closed Won' and amount != null order by amount desc) from account where id in :accIds];
    
        for (account acc : listAcc1) {
        if( acc.opportunities[0].amount > acc.Target_Amount__c){
            acc.Target_Amount_Achieved_Opportunity_Name__c = acc.opportunities[0].Name;
        }else{
            acc.Target_Amount_Achieved_Opportunity_Name__c = null;

        }
        update ListAcc1;
        }
    }

    public static void updateTotalAmountGenerated(set<id> accIds){
        list<account> listAcc2 =[Select id, name,Total_Amount_Generated__c, (Select id, name, AccountId, amount from opportunities where stageName = 'Closed Won' and amount != null) from account where id in :accIds];
        decimal totalAmount= 0;
        for (account acc : listAcc2) {
          for (opportunity opp : acc.opportunities) {
            totalAmount += opp.amount;
          }
          acc.Total_Amount_Generated__c = totalAmount;
          
        }
  
        update listAcc2;
    
      
    }
}


/*
PART 1 -
Create some custom fields a. 'Target Amount'
- Field Type: Currency - Field Type: Currency - Field Type: Text
b. 'Total Amount Generated'
c. 'Highest Amount Opportunity Name'
d. 'Target Amount Achieved Opportunity Name' - Field Type: Text
on Account Object.
Create future methods which takes in the set of Account Ids and do the following tasks:
A. Update the "Highest Amount Opportunity Name" field at Account level with the opportunity Name which have the Highest amount among the opportunities related to the account.
B. Update the 'Target Amount Achieved Opportunity Name' at Account level with the Closed Won Opportunity Name. Populate the opportunity name which have highest value in Amount field, and it should be more than 'Target Amount' field value at account.
C. Update the 'Total Amount Generated' at Account with the total of Amount for all the closed Won Opportunities related to an Account.
Please Note: Above updates should happen whenever any of the following event occurs:
i. Amount field is Updated at Opportunity level.
ii. Opportunity stageName is changed.
iii. Opportunity is reparented i.e AccountId field value is changed.
iv. A new Opportunity is created and tagged to an account.
v. An Opportunity is deleted or undeleted
Test Class for all the code [Optional]


PART 2 -
1. Write a logic to Create tasks for all the opportunities other than the closed won or closed lost and on which there was no activity since last 7 days. Implement using Batch APEX.
Populate the task field values as follows:
Field
Value
Subject
Other
Due Date
Today if Opportunity close date is already passed otherwise Opportunity Close Date – 2 days.
Comments
Reminder – Please take action on the Opportunity
Related To
Opportunity Id
Assigned To
Opportunity Owner Id
Status
In Progress
2. Write a logic to delete all the opportunities which were updated as closed Lost using BATCH apex, also print total number of opportunities DELETED.
Test Class for all code [Optional]
*/