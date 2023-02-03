public class CaseInvocable {
	@invocableMethod(label='Send Email & Save Activity'
                    description='This method sends an email and saves the same as activity'
                    category='Case')
    
    public static void sendEmailSaveActivity(list<InputRequest> inputs){
        //iterate over the inputs and create an email for each
        for (InputRequest input : inputs){
            
        }
    }
    
    public class inputRequest{
        @InvocableVariable(label='Contact ID' Description='Contact ID' Required = true)
        public id contactId;
        
        @InvocableVariable(label='Case Number' Description='Case Number' Required = true)
        public string caseNumber;
    }
}