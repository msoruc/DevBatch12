public class Cat {
    public string name;
    public string color;
    public static integer countCat = 0;

    //constructor is called automatic when we create new INSTANCE of Class.
    public Cat() {
        system.debug('cat constructor called');
        countCat++;
    }

    public Cat(string n, string clr){
        name = n;
        color = clr;
        countCat++;
    }
}
