global class UpdateLeadSource implements Database.Batchable<sObject>,Database.Stateful
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator(
            'Select * from Lead where Country='US' and City='New York'
        );
    }
    global void execute(Database.BatchableContext bc, List<Lead> scope)
    {
        List<Lead> lst_leads = new List<Lead>();
            for (Lead l:scope) {
                l.LeadSource ='Web';
		l.Rating='Hot';
                lst_leads.add(leads);
            }
        }
        update lst_leads;
    }    
    global void finish(Database.BatchableContext bc)
    {
    }    

}