public class SoqlDemo {
    public static void accountSOQL_1(){
        list<account> listAcc = [select id, name from account WHERE name like '%a%'];
        system.debug('list of acc-> ' +listAcc);
    }

    public static void accountSOQL_2(){
        Account acc = [select id, name, phone from account ORDER BY CreatedDate DESC limit 1];
        system.debug('latest created account is '+acc);
    }

    public static void accountSOQL_3(){
        Account acc = [select id, name, phone, AccountNumber from account ORDER BY CreatedDate DESC limit 1];
        system.debug('latest created account is '+acc);

        string accName = acc.Name;
        string accPhone = acc.Phone;

        system.debug('accName = ' + accName + ', phone # is '+accPhone);
        system.debug('account number is '+acc.AccountNumber);
    }

    public static void accountSOQL_4() {
        list<account> listAcc = [select id, name, phone, AccountNumber from account order by createddate desc];
        system.debug('all created account is ' + listAcc);

        for (Account eachAcc : listAcc) {
            string accName = eachAcc.name;
            string accPhone = eachAcc.Phone;
            system.debug('acc name is ' + accName + ', acc phone is ' + accPhone + ', accountnumber is ' + eachAcc.AccountNumber);
        }
    }

    public static void accountSOQL_filter(string accountFilter){
        list<account> listAcc = [select id, name, phone from account where name = :accountFilter];
        system.debug('filtered account name is '+ listAcc);
    }

    public static void accountSOQL_filter(list<string> accountNames){
        list<account> listAcc = [select id, name, phone from account where name IN :accountNames];
        system.debug('filtered account name is '+ listAcc);
    }
}
