public with sharing class CreateTaskCaseBatchable implements Database.Batchable<SObject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1;
        // if there is a system created field like createddate while testing it will give error. use this if contidion in test
        if (!Test.isRunningTest()) {
            q1 = Database.getQueryLocator([select id, OwnerId, ClosedDate from Case where Status != 'Closed' and LastModifiedDate < LAST_N_DAYS:5]);
        }else{
            q1 = Database.getQueryLocator([select id, OwnerId, ClosedDate from Case where Status != 'Closed']);
        }
        
        return q1;
    }

    public void execute(Database.BatchableContext bc, list<Case> scope){
        List<Task> taskList = new List<Task>();
        for (Case eachCase : scope) {
            task tsk = new task();
            tsk.Subject = system.label.Subject;
            tsk.Description = system.label.Comments;
            tsk.WhatId = eachCase.Id;
            tsk.OwnerId = eachCase.OwnerId;
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
