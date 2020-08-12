/**
 * Created by bjohnson on 8/12/20.
 */

public with sharing class OpportunityTriggerHandler {

    public  void createTaskOnClosedWon(List<Opportunity> triggerNew){
        List<Task> tasksToInsert = new List<Task>();
        for(Opportunity opp : triggerNew){
            if (opp.StageName == 'Closed Won') {
                Task t = new Task();
                t.Subject = 'Follow Up Test Task';
                t.WhatId = opp.Id;
                tasksToInsert.add(t);
            }
        }
        if(!tasksToInsert.isEmpty()){
            insert tasksToInsert;
        }
    }
}