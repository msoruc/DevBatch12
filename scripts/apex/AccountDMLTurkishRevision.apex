list<account> listacc = new list<account>();

Account acc = new Account();
acc.Name = 'MS';
acc.Phone = '123456789';
acc.Site = 'New';
acc.Website = 'www.google.com';
listacc.add(acc);

Account acc2 = new Account();
acc2.Name = 'FT';
acc2.Phone = '123456789';
acc2.Site = 'New';
acc2.Website = 'www.google.com';
listacc.add(acc2);

insert listacc;

system.debug('Our list is -->' +listacc);

acc.Name = 'Murat';
acc.Phone = '987654321';
acc2.Name = 'Fatma';
acc2.Phone = '987654321';

update listacc;

system.debug('Our list is after update -->' +listacc);


//this is how you delete multiple records with IN
list <Account> listdelete = [select name, phone from account where name IN ('Murat','Fatma')];

delete listdelete;

system.debug('Our list is after delete -->' +listacc);

List<Opportunity> listOpp = new list<Opportunity>();

        for (Integer i = 0; i < 150; i++) {
            Opportunity opp = new Opportunity();
            opp.Name = 'Homework';
            opp.Type = 'New Customer';
            opp.StageName = 'Qualification';
            opp.CloseDate = date.newInstance(2024, 02, 02);
            opp.Description = 'Homework desciription.';
            listOpp.add(opp);
        }

insert ListOpp;

List<Opportunity> listOppDelete = [select name from Opportunity where name IN ('Homework')];

delete listOppDelete;

/*
Account newAccount = new Account();
newAccount.Name = 'Summer Fest';
newAccount.ParentId = '001Do000003DzSyIAK';
newAccount.Type = 'Technology Number';
newAccount.Rating = 'Hot';
newAccount.AnnualRevenue = 200000000;

insert newAccount;

*/

List<Contact> newCnt = new list<Contact>();

Contact newContact1 = new Contact();
newContact1.LastName = 'Event Planner 1';
newContact1.Phone = '+1 2345 7890';
newContact1.AccountId = '001Do000002gtrnIAA';
newContact1.LeadSource = 'Web';
newCnt.add(newContact1);

Contact newContact2 = new Contact();
newContact2.LastName = 'Event Planner 2';
newContact2.Phone = '+1 2345 7890';
newContact2.AccountId = '001Do000002gtrnIAA';
newContact2.LeadSource = 'Web';
newCnt.add(newContact2);

Contact newContact3 = new Contact();
newContact3.LastName = 'Event Planner 3';
newContact3.Phone = '+1 2345 7890';
newContact3.AccountId = '001Do000002gtrnIAA';
newContact3.LeadSource = 'Web';
newCnt.add(newContact3);

insert newCnt;

