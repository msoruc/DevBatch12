public class Week2Practice {
    public static decimal dynamicCalculationMethed (decimal x, decimal y, string z){
        if (z == '+'){
            return x+y;
        }else if (z == '-'){
            return x-y;
        }else if (z == '*'){
            return x*y;
        }else if (z == '/'){
            return x/y;
        }else{
            system.debug ('Please enter correct operator');
            return null;
            
        }
    }

    
        public void printDateOutput() {
            date bugun = date.today();
            system.debug(bugun);
            Date time1 = date.newInstance(2789, 11, 05);
            system.debug(time1);
            Date time2 = date.newInstance(1459, 03,04);
            system.debug(time2);
            integer dayInt = 20;
            integer monthInt = 11;
            integer yearInt = 2022;
            date time3 =date.newInstance(yearInt,monthInt,dayInt);
            system.debug(time3);
        }
    
}
