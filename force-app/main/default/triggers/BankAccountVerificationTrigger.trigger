/*
 * Copyright (c) 2017 FinancialSpectra Pty Ltd
 * All rights reserved.
 * 
 * Trigger Name  - BankAccountVerificationTrigger
 * 
 * Developer(s)  - System Generated
 */
trigger BankAccountVerificationTrigger on Application_Bank_Account_Verification__c ( before insert
                                          , before update
                                          , before delete
                                          , after insert
                                          , after update
                                          , after delete
                                          , after undelete ) {
    if (Trigger.isBefore){
        if (Trigger.isInsert){
            BankAccountVerificationTriggerWrapper.getInstance().beforeInsertWrapper(Trigger.New);
        }
        if (Trigger.isUpdate){
            BankAccountVerificationTriggerWrapper.getInstance().beforeUpdateWrapper(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        }
        if (Trigger.isDelete){
            BankAccountVerificationTriggerWrapper.getInstance().beforeDeleteWrapper(Trigger.old, Trigger.oldMap);
        }
    }

    if (Trigger.isAfter){
        if (Trigger.isInsert){
            BankAccountVerificationTriggerWrapper.getInstance().afterInsertWrapper(Trigger.new, Trigger.newMap);
        }
        if (Trigger.isUpdate){
            BankAccountVerificationTriggerWrapper.getInstance().afterUpdateWrapper(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        }
        if (Trigger.isDelete){
            BankAccountVerificationTriggerWrapper.getInstance().afterDeleteWrapper(Trigger.old, Trigger.oldMap);
        }
        if (Trigger.isUndelete){
            BankAccountVerificationTriggerWrapper.getInstance().afterUndeleteWrapper(Trigger.new, Trigger.newMap);
        }
    }

}