public class AdditionStaticNonStatic {
    public integer n1;
    public integer n2;
    public static integer add;

    public AdditionStaticNonStatic (integer a, integer b){
        n1=a;
        n2=b;
    } 
    public integer addInt(){
        add=n1+n2;
        return add;
    }

    public static void printAddition(){
        system.debug('Addtion of two integers '+add);
    }
}
