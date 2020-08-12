/**
 * Created by bjohnson on 8/12/20.
 */

trigger ClosedOpportunityTrigger on Opportunity (after update, after insert) {

    OpportunityTriggerHandler handler = new OpportunityTriggerHandler();
    handler.createTaskOnClosedWon(Trigger.new);

}