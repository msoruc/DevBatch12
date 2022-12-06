public class Calculator {
    public void welcomeMessage (){
        system.debug('Welcome to APEX Calculator.');
    
    }

    public void printNewMessage (string msg){
        //vriable name of parameter is USED inside the class
        //OUTSIDE class, variable name of parameter DOES NOT MATTER
        system.debug(msg);
    }

    public string printAndReturnMsg(string msg2){
        system.debug(msg2);
        string returnStr = msg2 + '.... OK cool';
        return returnStr;    
    
    }

    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    public integer add(integer a, integer b, integer c){
        integer sum = a+b+c;
        return sum;
    }

    public Boolean checkLeapYear(date dt){
        integer year = dt.year();
        Boolean lp = date.isLeapYear(year);
        return lp;
    }
}
