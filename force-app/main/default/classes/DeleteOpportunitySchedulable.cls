public class DeleteOpportunitySchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        CreateTaskOppBatchable2 opp = new CreateTaskOppBatchable2();
        database.executeBatch(opp, 200);

    }  


    
}