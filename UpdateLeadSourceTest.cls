public class UpdateLeadSourceTest 
{
    static testMethod void testMethod1() 
    {
        Test.startTest();

            UpdateLeadSource obj = new UpdateLeadSource();
            DataBase.executeBatch(obj); 
            
        Test.stopTest();
    }
}