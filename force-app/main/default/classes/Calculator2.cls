public class Calculator2 {
    public static void welcomeMessage (){
        system.debug('Welcome to APEX Calculator.');
    
    }

    public static void printNewMessage (string msg){
        //vriable name of parameter is USED inside the class
        //OUTSIDE class, variable name of parameter DOES NOT MATTER
        system.debug(msg);
    }

    public static integer add(integer a, integer b) {
        return(a+b);
    }

    public static integer add(integer x, integer y, integer z) {
        return(x+y+z);
    }
}
