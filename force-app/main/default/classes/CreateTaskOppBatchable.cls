public class CreateTaskOppBatchable implements Database.Batchable<SObject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1 = Database.getQueryLocator([select id, OwnerId, CloseDate from Opportunity where (StageName != 'Closed Won' and StageName != 'Closed Lost') and LastModifiedDate < LAST_N_DAYS:7]);
      
        return q1;
    }

    public void execute(Database.BatchableContext bc, list<Opportunity> scope){
        List<Task> taskList = new List<Task>();
        for (Opportunity eachOpp : scope) {
            task tsk = new task();
            tsk.Subject = 'Other';
            if (eachOpp.CloseDate < Date.Today()) {
                tsk.ActivityDate = Date.Today();
            }else{
                tsk.ActivityDate = eachOpp.CloseDate.addDays(-2);
            }
            tsk.Description = 'Reminder: Please take action on the Opportunity';
            tsk.WhatId = eachOpp.Id;
            tsk.OwnerId = eachOpp.OwnerId;
            tsk.Status = 'In Progress';
            taskList.add(tsk);
        }
        if (!taskList.isEmpty()) {
            insert taskList;
        }
        
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finish method called.');
   }
}
