@isTest
public class OperationHelperTest {
    
    
    @isTest
    private static void largetsOutOfTwoNumbersTest() {
        OperationHelper twoNumbers = new OperationHelper();
        decimal OperationHelper = twoNumbers.largetsOutOfTwoNumbers(3, 1);
        system.assertEquals(3, OperationHelper);
        decimal OperationHelper2 = twoNumbers.largetsOutOfTwoNumbers(1, 3);
        system.assertEquals(3, OperationHelper2);
        decimal OperationHelper3 = twoNumbers.largetsOutOfTwoNumbers(3, 3);
        system.assertEquals(null, OperationHelper3);
    }

    
    @isTest
    private static void OutOfThreeNumbersTest() {
        OperationHelper threeNumbers = new OperationHelper();
        decimal OperationHelper = threeNumbers.smallestOutOfTwoNumbers(1, 3, 4);
        system.assertEquals(1, OperationHelper);
        decimal OperationHelper2 = threeNumbers.smallestOutOfTwoNumbers(5, 3, 4);
        system.assertEquals(3, OperationHelper2);
        decimal OperationHelper4 = threeNumbers.smallestOutOfTwoNumbers(5, 4, 3);
        system.assertEquals(3, OperationHelper4);
    }

    @isTest
    private static void smallestOutOfTwoNumbers2Test() {
        OperationHelper threeNumbers = new OperationHelper();
        decimal OperationHelper = threeNumbers.smallestOutOfTwoNumbers2(1, 2, 3);
        system.assertEquals(1, OperationHelper);
    }

    @isTest
    private static void sumofPositiveIntegersTest() {
        OperationHelper nbr = new OperationHelper();
        integer OperationHelper = nbr.sumofPositiveIntegers(3);
        system.assertEquals(6, OperationHelper);
        integer OperationHelper2 = nbr.sumofPositiveIntegers(-3);
        system.assertEquals(null, OperationHelper2);
    }   
}