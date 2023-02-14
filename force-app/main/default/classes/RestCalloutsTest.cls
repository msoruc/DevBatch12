@isTest
public with sharing class RestCalloutsTest {
    @isTest
    private static void getAnimalsTest(){
        //set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //test the mock
        HttpResponse response = RestCallouts.getAnimals();
        //run assert
        system.assertEquals(200, response.getStatusCode());
        system.assertEquals('OK', response.getStatus());

    }

    @isTest
    private static void getAirlinesTest(){
        //set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //test the mock
        HttpResponse response = RestCallouts.getAirlines();
        //run test
        system.assertEquals(200, response.getStatusCode());
        system.assertEquals('OK', response.getStatus());
    }
    @isTest
    private static void getEmployeesTest(){
        //set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //test the mock
        HttpResponse response = RestCallouts.getEmployees();
        //run test
        system.assertEquals(200, response.getStatusCode());
        system.assertEquals('OK', response.getStatus());
    }
    @isTest
    private static void getCasesUsingNCTest(){
        //set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //test the mock
        HttpResponse response = RestCallouts.getCasesUsingNC();
        //run the test
        system.assertEquals(200, response.getStatusCode());
        system.assertEquals('OK', response.getStatus());
    }
    @isTest
    private static void postAnimalTest(){
        //set the mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //test the mock
        HttpResponse response = RestCallouts.postAnimal();
        //run the test
        system.assertEquals(201, response.getStatusCode());
        system.assertEquals('OK', response.getStatus());
    }
}