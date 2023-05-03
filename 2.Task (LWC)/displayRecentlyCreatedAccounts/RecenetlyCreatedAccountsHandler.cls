public with sharing class RecenetlyCreatedAccountsHandler {
    @AuraEnabled(cacheable=true)
    public static List<Account> fetchAcc(){
        return [SELECT Id, Name, Type, AnnualRevenue, Phone FROM ACCOUNT  ORDER BY CreatedDate DESC LIMIT 10];
    }  
}