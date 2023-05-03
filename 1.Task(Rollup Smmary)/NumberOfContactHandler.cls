public with sharing class NumberOfContactHandler {
        public static void NewMethod(list<Contact> newlIST){
            set<id> AccId= New set<id>();
            for(Contact Con: newlIST){
                AccId.Add(Con.AccountId);  
            }
            List<AggregateResult> AccountAggrResult = [SELECT AccountId , Count(Id)CountC FROM Contact
                                                       WHERE AccountId=:AccId GROUP BY AccountId];
            LIST<Account> Actlist = new LIST<Account>();
            For(AggregateResult Ar: AccountAggrResult){
                Account Acc = New Account();
                Acc.Id = (Id)Ar.Get('AccountId');
                Acc.Number_Of_Contacts__c=(Decimal)Ar.Get('CountC');
                Actlist.add(Acc);
            }
            update Actlist;    
        }
        Public static void oldMethod(list<contact> OldList){
            set<id> AccId= New set<id>();
            for(Contact Con: OldList){
                AccId.Add(Con.AccountId);  
            }
            List<AggregateResult> AccountAggrResult = [SELECT AccountId, Count(Id)CountC FROM Contact
                                                       WHERE AccountId=:AccId GROUP BY AccountId];
            LIST<Account> Actlist = new LIST<Account>();
            For(AggregateResult Ar: AccountAggrResult){
                Account Acc = New Account();
                Acc.Id = (Id)Ar.Get('AccountId');
                Acc.Number_Of_Contacts__c=(Decimal)Ar.Get('CountC');
                Actlist.add(Acc);
            }
            update Actlist;    
        }
    
}