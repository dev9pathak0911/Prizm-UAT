trigger Blank_SSNs on Account (before Update) {
    for (Account a:Trigger.new)
    {
        if( a.SSN__c != NULL )
        {
            a.SSN__c = NULL;
        }
        if( a.Transunion_SSN__c != NULL )
        {
            a.Transunion_SSN__c = NULL;
        }
    }
}