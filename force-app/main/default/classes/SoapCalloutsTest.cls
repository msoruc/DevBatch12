@isTest
public with sharing class SoapCalloutsTest {
    @isTest
    private static void parksCalloutTest(){
        //set the mock
        ParksServicesMock mock = new ParksServicesMock();
        Test.setMock(WebServiceMock.class, mock);

        //test the mock
        String country = 'Turkiye';
        String[] parks = SoapCallouts.parksCallout(country);

        //do asserts
        system.assertEquals(2, parks.size());
    }  
    @isTest
    private static void doAddCalloutTest(){
        //set the mock
        doAddCalloutMock mock = new doAddCalloutMock();
        Test.setMock(WebServiceMock.class, mock);

        //test the mock
        Double add = SoapCallouts.doAdditions(10, 5);
        //do asserts
        system.assertEquals(15, add);
    }  
}