public class AccountListController {
    @AuraEnabled 
    public static list<AccountWrapper> lstAccwrap{get;set;}
    
    public AccountListController(){
        lstAccwrap = new list<AccountWrapper>();
        Account acc = new Account();
        lstAccwrap.add(new AccountWrapper(acc));
    }
	@AuraEnabled
    //public static list<Account> getAccounts(){
    public static list<Account> getAccounts(){
        list<Account> acc = new list<Account>();
        acc = [select Id,Name,Description from Account where Name != null or Name !=' ' Order By Name Limit 3];
        return acc;
    }
    @AuraEnabled
    public static list<AccountWrapper> getAddRow(){
        lstAccwrap = new list<AccountWrapper>();
        //AccountWrapper accwrp = new AccountWrapper();
        Account acc = new Account();
        lstAccwrap.add(new AccountWrapper(acc));
        return lstAccwrap;
    }
    @AuraEnabled
    public static void getAccountupdatedlist(string lstAccToInsert){
        system.debug('acc--->'+lstAccToInsert);
    }
    public class AccountWrapper
	{
        @AuraEnabled
        public Account acct {get;set;}
        AccountWrapper(account a){
            acct = a;
        }
	}
    @AuraEnabled 
    public static void saveAssessment(Account assessment){
        upsert assessment;
    }

}