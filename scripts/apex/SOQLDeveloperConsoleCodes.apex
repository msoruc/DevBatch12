SELECT Id, OwnerId, CreatedDate, Project_Name__c, Status__c FROM Salesforce_Project__c where status__c !='new'

SELECT Id, OwnerId, CreatedDate, Project_Name__c, Status__c FROM Salesforce_Project__c where status__c !=''

select id, name, phone, accountnumber from account where phone !=null and accountnumber !=null

select id, name, phone, accountnumber from account where phone !=null or accountnumber !=null

select id, name, phone, accountnumber from account where (phone !=null or website !=null) and accountnumber !=null

select id, name, subject__c, status__c, priority__c from salesforce_ticket__c where status__c !='' and priority__c !='high'

select id, name, subject__c, status__c, priority__c from salesforce_ticket__c where status__c !='' and priority__c in ('high', 'medium')

select id, name from contact 

select id, name, account.name from contact 

select id, name, account.name, account.phone, account.industry from contact where account.industry ='energy' 

select id, subject__c, priority__c, salesforce_project__r.name from salesforce_ticket__c 

select id, subject__c, priority__c, status__c, salesforce_project__r.name from salesforce_ticket__c 

select id, subject__c, priority__c, status__c, salesforce_project__r.name, salesforce_project__r.project_name__c from salesforce_ticket__c 

select id, name, (select id, lastname from contacts) from account

select id, name, (select id, lastname from contacts), (select id, amount from opportunities ) from account

select id, name, annualrevenue from account where type ='customer - direct'

select id, name, annualrevenue, (select name, amount from opportunities where stagename = 'closed won') from account where type ='customer - direct'

select leadsource, count(name) from lead group by leadsource 

select name, count(id) from account group by name 

select name, count(id) from account group by name having count(id)>1 

select sum(amount) from opportunity where isclosed = false

select sum(amount), stagename from opportunity where isclosed = false group by stagename

select sum(amount), stagename from opportunity group by stagename

SELECT Id, Name, AnnualRevenue FROM Account where name = 'United%'

SELECT Id, Name, AnnualRevenue FROM Account where name = '%United%'

SELECT Name, AnnualRevenue FROM Account where name like 'United%'

SELECT Id, Name, AnnualRevenue FROM Account where name where = 'United%'

SELECT Name, Id, AnnualRevenue FROM Account where name like ‘United\%%’

SELECT Name, Id, AnnualRevenue FROM Account where annualrevenue !=null order by annualrevenue desc limit 3 

SELECT Name, Id, rating, phone FROM Account order by createddate desc limit 1  

SELECT name, email, account.name, title FROM contact where title like ‘%VP%’ 

SELECT name, amount, closedate FROM opportunity where stagename =‘closed won’ 

SELECT name, amount FROM opportunity where amount > 100000 

SELECT name, account.name, account.rating FROM opportunity where account.type =‘Customer - Direct’ 

SELECT Id, Status__c, Subject__c, RecordTypeId FROM Salesforce_Ticket__c where Salesforce_Project__r.Status__c = ‘Completed’ 

SELECT account.name, count(name) FROM Contact group by account.name 