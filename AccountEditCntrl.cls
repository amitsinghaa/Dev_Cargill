public class AccountEditCntrl {
	@AuraEnabled
    public static list<Account> getAccountTobeEdited(string AccId){
        List<Account> lstAcc = [select Id,name from Account where Id =:AccId];
        return lstAcc;
    } 
}