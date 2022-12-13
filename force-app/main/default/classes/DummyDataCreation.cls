public class DummyDataCreation {
   public static list<account> NAcc(integer N) {
    list<account> listAcc = new list<account>();
    if (N>=0) {
        for (integer i=1; i<=N; i++){
            Account acc = new account();
            acc.Name = 'Ali' + i;
            acc.Phone = '123456789';
            acc.Rating = 'Hot';
            acc.ShippingCity = 'New York';
            acc.BillingCity = 'Arizona';
            listAcc.add(acc);
        }
    }else{
        system.debug('N number is negative. Please enter positive number');
    }
    
    insert listAcc;
    return listAcc;
   }
}
