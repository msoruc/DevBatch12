public with sharing class CaseQueueble implements Queueable {
    public void execute(QueueableContext qc){
        case cs = new case();
        cs.Origin = 'Web';
        cs.Status = 'New';
        insert cs;
    }
}
