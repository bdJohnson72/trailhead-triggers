/**
 * Created by bjohnson on 7/11/20.
 */

trigger Lead on Lead (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    System.debug('The values in Trigger.new are ' + Trigger.new);
    System.debug('The values in Trigger.oldMap are ' + Trigger.oldMap);
    System.debug('The Trigger type is ' + Trigger.operationType);
    System.debug('The values in Trigger.old are ' + Trigger.old);
    LeadTriggerHandler handler = new LeadTriggerHandler(Trigger.new, Trigger.oldMap, Trigger.old, Trigger.newMap, Trigger.operationType);




}