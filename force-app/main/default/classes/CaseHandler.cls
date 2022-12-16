public class CaseHandler {
    public static void updateStatusPriority(list<case> triggerNew) {
        for (case eachCase : TriggerNew){
            if (eachCase.Origin == 'Email') {
                eachCase.Status = 'New';
                eachCase.Priority = 'Medium';
            }
        }
    }
}
