public with sharing class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        String batchName = 'Batch 999';
        Integer totalCandidates = 40;
        Boolean isAdminCompleted = true;
        Decimal decValue = 27.01;
        Long longValue = 1234124124L;
        Object obj = 'This is a integer';
        Object obj2 = 20;
        system.debug('printing datatypes');
        system.debug('Batch Name is ' + batchName);
        system.debug('Total Candidates are ' + totalCandidates);
        system.debug('Is Admin Complated ' + isAdminCompleted);
        system.debug('Decimal Value ' + decValue);
        system.debug('Long Value ' + longValue);
        system.debug('Object 1 ' + obj);
        system.debug('Object 2 ' + obj2);
        
    }
    public void printBasicDataType2(){
        Id accountId1 = '0015h000014R11WAAS';
        system.debug('Account ID is ' + accountId1);
    }
}
