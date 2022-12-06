public  class Candidates {
    public string Name;
    public string Gender;
    public static string coompanyName;
    public static integer countCandidate =0;
    
    public void printCandidates(){
        system.debug('name of candidate is '+ name + ', gender is '+gender + ' company name is '+ coompanyName + '.');

    }

    public static void printCandidateIndo(){
        //we CAN access sttic members in static method
        system.debug('company name is static method is ' + coompanyName);
        //we CANNOT access NON STATIC member in static method
        //system.debug('name is '+name);
    }
}
