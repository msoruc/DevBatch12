@isTest
public class OpportunityTriggerHandlerTest {

    @TestSetup
    static void makeData(){
        
        Account acc1 = new Account(Name='Acc 1',Target_Amount__c = 2000);
        Account acc2 = new Account(Name='Acc 2',Target_Amount__c = 2000);
        
        List<Account> lstAcc = new List<Account>{acc1,acc2};
       
       insert lstAcc;

       List<Opportunity> lstOpp = new List<Opportunity>();
        for (Integer i = 1; i <= 100; i++) {
            // acc1 e bağlı opportunityler
            if(i<=50){
                Opportunity opp = new Opportunity( Name = 'Opp ' + i, CloseDate = date.today(), AccountId = acc1.Id);
                if (i<=30) {
                    opp.StageName = 'Closed Won';
                    opp.Amount = 1000;
                }else if(i<=47){
                    opp.StageName = 'Closed Lost';
                    opp.Amount = 5000;
                }else if(i==48){
                    opp.StageName = 'Closed Lost';
                }else if(i==49){
                    opp.StageName = 'Closed Won';
                    opp.Amount = 7000;
                }else if(i==50){
                    opp.StageName = 'Closed Lost';
                    opp.Amount = 9000;
                }
                lstOpp.add(opp);
            }else if(i==51){ //Acc2 ye bağlı opportunity
                Opportunity opp = new Opportunity( Name = 'Opp ' + i, CloseDate = date.today(),StageName = 'Closed Won',Amount = 15000,AccountId=acc2.Id);
                lstOpp.add(opp);
            }
            // Accounta bağlı olmayan opportunityler
            else{
                Opportunity opp = new Opportunity( Name = 'Oppo ' + i, CloseDate = date.today(),StageName = 'Closed Won',Amount = 10000);
                lstOpp.add(opp);
            }
        }
        insert lstOpp;

        // Opportunity opp49update=[Select Id from Opportunity where Name = 'Opp 49'];
        // opp49update.Amount = 25000;
        // update opp49update;

        // İlgili fieldların null olma durumu için Accountun opp si siliniyor
        // Opportunity opp51=[Select Id from Opportunity where Name = 'Opp 51'];
        // delete opp51;
    }
    
    @isTest
    private static void updateHighestAmountOppNameTest() {
        
        //  Test.startTest();
         List<Account> lstAcc = [Select Id,Highest_Amount_Opportunity_Name__c from Account Where Name = 'Acc 1'];

         Account accWithOpp51 = [Select Id,Highest_Amount_Opportunity_Name__c from Account where Name ='Acc 2'];
        
        //  Test.stopTest();

         System.assertEquals('Opp 50', lstAcc[0].Highest_Amount_Opportunity_Name__c);
         System.assertEquals(null, accWithOpp51.Highest_Amount_Opportunity_Name__c);
    }
        
    @isTest
    private static void updateTargetAmountAchievedOppNameTest() {
        Test.startTest();
        List<Account> lstAcc = [Select Id,Target_Amount_Achieved_Opportunity_Name__c from Account Where Name = 'Acc 1'];
        Account accWithOpp51 = [Select Id,Target_Amount_Achieved_Opportunity_Name__c from Account where Name ='Acc 2'];
        Test.stopTest();

        System.assertEquals('Opp 49', lstAcc[0].Target_Amount_Achieved_Opportunity_Name__c);
        System.assertEquals(null, accWithOpp51.Target_Amount_Achieved_Opportunity_Name__c);
    }
    @isTest
    private static void updateTotalAmountGeneratedTest() {
        Test.startTest();
        List<Account> lstAcc = [Select Id,Total_Amount_Generated__c from Account Where Name = 'Acc 1'];
        Account accWithOpp51 = [Select Id,Total_Amount_Generated__c from Account where Name ='Acc 2'];
        Test.stopTest();
        
        system.assertEquals(37000, lstAcc[0].Total_Amount_Generated__c); 
        system.assertEquals(null, accWithOpp51.Total_Amount_Generated__c); 
    }
}



/*
@isTest
public class OpportunityTriggerHandlerTest {
    @TestSetup
    static void makedata(){

        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Target_Amount__c = 50000;
        

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Target_Amount__c = 100000;
    

        List<account> listAcc = new list<account>{acc1, acc2};

        insert listAcc;

         //create 100  Opportunity for each account
        List<Opportunity> listOpp = new list<Opportunity>();
        
        
        for (Integer i = 0; i < 100; i++) {
            Opportunity c = new Opportunity();
            c.CloseDate = Date.today();
            c.Name = 'OppName' +i;
            if (i <= 50){ 
                if (i <= 10) {
                    c.AccountId = acc1.id;
                    c.stageName = 'Closed Won';
                    c.Amount = 140000;
                    
                } else if (i <= 30) {
                    c.AccountId = acc1.id;
                    c.stageName = 'Closed Lost';
                    c.Amount = 10000;
                }else if (i < 50) {
                    c.AccountId = acc1.id;
                    c.stageName = 'Closed Won';
                    c.Amount = 200000;
                }
            }else if (i>= 51 && i<= 90) {
                if (i < 70) {
                    c.AccountId = acc2.id;
                    c.stageName = 'Closed Won';
                    c.Amount = 240000;
                } else if (i < 80) {
                    c.AccountId = acc2.id;
                    c.stageName = 'Closed Lost';
                    c.Amount = 20000;
                }else if (i < 89) {
                    c.AccountId = acc2.id;
                    c.stageName = 'Closed Won';
                    c.Amount = 500000;
                }else if (i == 90) {
                    c.AccountId = acc2.id;
                    c.stageName = 'Closed Won';
                    c.Amount = 999999;
                }
            }else {
                c.stageName = 'Closed Won';
                c.Amount = 500000;
                }
                listOpp.add(c);
            }

            
            insert listOpp;

    }
    //a
    @isTest
    private static void updateHighestAmountTest() {

        Test.startTest();
       list<Account> listAcc = [select id, name, Highest_Amount_Opportunity_Name__c from account where Name = 'acc2']; 
        Test.stopTest();
       
     system.assertEquals('OppName90', listAcc[0].Highest_Amount_Opportunity_Name__c);
        

    }

    //b
    @isTest
    private static void updateTargetAmountAchOppNameTest() {
        Test.startTest();
        list<Account> listAcc = [select id, name, Highest_Amount_Opportunity_Name__c from account where Name = 'acc2'];
        Test.stopTest();

        system.assertEquals(100000, listAcc[0].Highest_Amount_Opportunity_Name__c);

    }
}

*/