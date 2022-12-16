trigger ContactHandler on Contact (before insert, after insert) {
    //if(trigger.isBefore && trigger.isInsert){
    //    ContactHandler.contactMethod(trigger.new);
   // }
    if (trigger.isAfter && trigger.isInsert) {
        ContactHandler.contactMethod2(trigger.newMap);
    }
}