public class StringDemoClass {
    public void stringMethod1(){
        String sessionDesc = 'learning string methods in apex language';
        system.debug(sessionDesc);

        //get lenght of above string
        Integer lengthOfStr = sessionDesc.length();
        system.debug('The lenght of string is '+ lengthOfStr);

        // capital
        string capsSessionsDesc = sessionDesc.toUpperCase();
        system.debug('in capitals -> ' + capsSessionsDesc);

        //string contains apex
        Boolean containsApex = sessionDesc.contains('apex'); //apex != Apex or !=APex
        system.debug('contains Apex??? ' +containsApex); //strings are case sensitive

        //check salesforce
        String sf = 'salesforce';
        Boolean containSf = sessionDesc.contains('salesfoce');
        Boolean containSf2 = sessionDesc.contains(sf);
        system.debug('contains salesfoce?? '+containSf);
        system.debug('contains salesfoce?? '+containSf2);

        //contains capital Apex
        Boolean containsApex2 = sessionDesc.containsIgnoreCase('Apex');
        system.debug('contains ignore case Apex??' + containsApex2);
        
        
        
        

    }
        
}
