public class CreateTaskOppBatchable2 implements Database.Batchable<SObject>, Database.stateful{
    public integer count = 0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q1 = Database.getQueryLocator([select id, StageName from Opportunity where StageName = 'Closed Lost']);
      
        return q1;
    }

    public void execute(Database.BatchableContext bc, list<Opportunity> scope){
        if (scope.size() > 0 ){
            count = count + scope.size();
            delete scope;   
        }

    }

    public void finish(Database.BatchableContext bc){
        system.debug('total number of opportunities DELETED -->' + count);
   }

}