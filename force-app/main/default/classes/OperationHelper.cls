public class OperationHelper {
   
    public decimal largetsOutOfTwoNumbers (decimal x, decimal y){
        if (x>y){
            system.debug(' This is the biggest number');
            return x;
        }else if (x<y){
            system.debug(' This is the biggest number');
            return y;
        }else{
            system.debug('These numbers are equal to eachother');
            return null;
        }
    }

    
    public decimal smallestOutOfTwoNumbers(decimal x, decimal y, decimal z){
        if (x<=y && x<=z){
            system.debug(x + 'This is the smallest number');
            return x;
        }
        else if (y<=x && y<=z){
            system.debug(z + ' This is the smallest number');
            return y;
        }else{
            system.debug(y + ' This is the smallest number');
            return z;
        }
    }


    public decimal smallestOutOfTwoNumbers2(decimal a, decimal b, decimal c){
        decimal x = Math.min(a,b);
        return Math.min(x, c);
    }
    /*
    public decimal smallestOutOfTwoNumbers(decimal a, decimal b, decimal c){
        if(a <=b && a <=c){
          return a;
        }
        else if(b <=a && b< =c){
          return b;
        }
        return c;
      }
      */

    public integer sumofPositiveIntegers (integer n){
    
    Integer sum = 0;
    if (n>=0){
        for (integer i=1; i<=n; i++)
            sum += i;
            system.debug(sum); 
            return sum;
        }else{
            system.debug('We are not calculating the sum for negative numbers');
            return null;
        }
    }
 
}



