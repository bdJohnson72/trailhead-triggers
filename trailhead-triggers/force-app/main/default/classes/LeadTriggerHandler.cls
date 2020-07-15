/**
 * Created by bjohnson on 7/11/20.
 */

public with sharing class LeadTriggerHandler {

    public LeadTriggerHandler(List<Lead> newList, Map<Id, Lead> oldMap, List<Lead> oldList, Map<Id, Lead> newMap, TriggerOperation type){
        System.debug('in the lead handler' + type);
        System.debug('Trigger new = ' + newList);

        switch on type {
            when BEFORE_UPDATE {
                isFirstNameChanged(newList, oldMap);
            }
        }
    }
    private void isFirstNameChanged(List<Lead> newList, Map<Id, Lead> oldMap){
        for(Lead l : newList){
            Lead oldLead = oldMap.get(l.id);
            System.debug(oldLead);
            if (l.FirstName != oldLead.FirstName) {
                System.debug('send out an email about the name change policy');
            }
        }

    }

}