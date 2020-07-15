/**
 * Created by bjohnson on 7/15/20.
 */

trigger AccountAddressTrigger on Account (before insert, before update) {

    AccountTriggerHandler.checkAddressCondition(Trigger.new);

}