trigger LeadTrigger on Lead (before insert) {
    if(trigger.isBefore && trigger.isInsert){
        for (lead eachLead : trigger.new) {
            if (eachLead.LeadSource == 'Web') {
                system.debug('Rating should be Cold');
            }else{
                system.debug('Rating should be Hot');
            }
        }
    }
}