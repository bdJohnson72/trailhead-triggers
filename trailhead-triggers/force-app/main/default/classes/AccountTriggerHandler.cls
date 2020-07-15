/**
 * Created by bjohnson on 7/15/20.
 */

public with sharing class AccountTriggerHandler {

    public static void checkAddressCondition(List<Account> newAccountList){
        //for loop
        // check if postal code is not null
        // if not null and check box = true then update the shipping address to match billing
        for(Account a : newAccountList){
            if(a.BillingPostalCode != null & a.Match_Billing_Address__c == true){
                a.ShippingPostalCode = a.BillingPostalCode;
                //update a;
            }
        }
    }

}