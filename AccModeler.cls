public class AccModeler{
    private Account acctId{get;set;}
    public string accId{get;set;}
    public list<Account> lstAct{get;set;}{lstAct = new list<Account>();}
    public AccModeler(){
       //accID = Apexpages.currentPage().getParameters().get('name');
       refreshInitializationData();
    }
    public void refreshInitializationData(){
        //do all the logic
        lstAct = [select Id, Name, description from Account limit 10];
    }
    public PageReference reDirectCase(){
        //String dealId = apexpages.currentpage().getParameters().get('acctId');
        system.debug('Idpass---> '+accId);
        try{
        PageReference pg = new PageReference('/apex/CaseDetails?accId='+ accId);        
        pg.setRedirect(true); 
        
            try{
                system.debug('adadsas');
            }catch(exception e){
                system.debug('adadsas');
            }               
        return pg;
        }catch(exception e){
        system.debug('adadsas');
        }
        return null;
        
    }

}