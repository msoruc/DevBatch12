trigger CaseTrigger on Case (before insert, before update, after insert, after update) {

    
    system.debug('We are in the trigger');

    if(trigger.isBefore){
        system.debug('We are in the Before trigger');
        if(trigger.isInsert){
            system.debug('We are in the Before Insert trigger');
        }
        if(trigger.isUpdate){
            system.debug('We are in the Before Update trigger');
        }
    }
    if(trigger.isAfter){
        system.debug('We are in the After trigger');
        if(trigger.isInsert){
            system.debug('We are in the After Insert trigger');
            for (case eachCase : trigger.new){
                system.debug('Case# ' + eachCase.CaseNumber + ' was created with id ' + eachCase.Id + ' on ' + eachCase.CreatedDate);

            }
        }
        if(trigger.isUpdate){
            system.debug('We are in the After Update trigger');
        }
    }

    /*

    list<case> listC = new list<case>();

        for (Integer i = 0; i < 205; i++) {
            case c = new case();
            c.Subject = 'There is a bug';
            c.Description = 'Resolve it';
            c.Origin = 'Web';
            c.Status = 'New';
            listC.add(c);
        }

    insert listC;

    */

}
