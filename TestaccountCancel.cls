@isTest

public class TestaccountCancel {
   public static void AccountForTesting() {

}
    @isTest static void returnCancelledTest(){
        Account acct = new Account();
        //List<Return__c> retlist = new List <Return__c>(); 
        Return__c ret = new Return__c();
        Account acct2; 
        //change line below to accountId_c. Might need to add this to sandbox using Charges__c as a place holder 
        acct.Name = 'test';
        insert acct;     
        acct2 = [SELECT Id, Name FROM Account WHERE Name =: 'test'];
        ret.Name = 'test';        
        ret.Cancelled__c = true;
           

        ret.Account__c = acct2.id; 
        
        
        Test.startTest();
        insert ret;
        Test.stopTest();
    }
    
@isTest static void returnNotCancelledTest(){
        Account acct = new Account();
        //List<Return__c> retlist = new List <Return__c>(); 
        Return__c ret = new Return__c();
        Account acct2; 
        //change line below to accountId_c. Might need to add this to sandbox using Charges__c as a place holder 
        acct.Name = 'test';
        insert acct;     
        acct2 = [SELECT Id, Name FROM Account WHERE Name =: 'test'];
        ret.Name = 'test';        
        ret.Cancelled__c = false;
           

        ret.Account__c = acct2.id; 
        
        
        Test.startTest();
        insert ret;
        Test.stopTest();
    }
    
}