Calculator cal = new Calculator();
cal.welcomeMessage();
//This is Outside

string message = 'print this message';
cal.printNewMessage(message);

cal.printNewMessage('now print this message');


string r = cal.printAndReturnMsg('print this asap');
system.debug(r);

integer addition1 = cal.add(10, 15);
system.debug(addition1);

integer addition2 = cal.add(10, 15, 20);
system.debug(addition2);

date newDate = date.newInstance(2016, 4, 8);
Boolean lpCheck = cal.checkLeapYear(newDate);
system.debug(newDate + ' check leap year ' + lpCheck);