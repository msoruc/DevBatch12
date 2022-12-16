trigger CaseHandler on Case (before insert, before Update, after Insert, after Update) {
    if(Trigger.isBefore && trigger.isInsert){
        CaseHandler.updateStatusPriority(trigger.new);
    }

}