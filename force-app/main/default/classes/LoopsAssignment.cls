public class LoopsAssignment {
    public integer factorial(integer fvalue){
        integer factorialValue = 1;
        for (integer n=1; n<=fvalue; n++){
            factorialValue = factorialValue * n;
        }
        system.debug(factorialValue);
        return factorialValue;
    }

    public integer doWhile(integer fvalue2){
        integer factorialValue = 1;
        integer i=1;

        while(i<=fvalue2){
            factorialValue = factorialValue * i;
            i++;
        }
        system.debug(factorialValue);
        return factorialValue;
    }
}
