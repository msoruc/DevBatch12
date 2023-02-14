public with sharing class SoapCallouts {
    public static String[] parksCallout(String country){
        ParksServices.ParksImplPort parkServices = new ParksServices.ParksImplPort();
        String[] parks = parkServices.byCountry(country);
        system.debug(parks);
        return parks;
    }
    public static Double doAdditions (Double x, Double y){
        CalculatorServices.CalculatorImplPort calculateAddition = new CalculatorServices.CalculatorImplPort();
        Double addition = calculateAddition.doAdd(x,y);
        system.debug(addition);
        return addition;
    }
    public static Double doMultiplys (Double x, Double y){
        CalculatorServices.CalculatorImplPort calculateMultiply = new CalculatorServices.CalculatorImplPort();
        Double Multiply = calculateMultiply.doMultiply(x,y);
        system.debug(Multiply);
        return Multiply;
    }
    public static Double doSubtracts (Double x, Double y){
        CalculatorServices.CalculatorImplPort calculateSubtract = new CalculatorServices.CalculatorImplPort();
        Double Subtract = calculateSubtract.doSubtract(x,y);
        system.debug(Subtract);
        return Subtract;
    }
    public static Double doDivides (Double x, Double y){
        CalculatorServices.CalculatorImplPort calculateDivide = new CalculatorServices.CalculatorImplPort();
        Double Divide = calculateDivide.doDivide(x,y);
        system.debug(Divide);
        return Divide;
    }
}