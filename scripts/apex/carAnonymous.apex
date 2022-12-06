car tesla = new car();
tesla.carColor = 'White';
tesla.carName = 'Tesla is fast';
tesla.switchOn();
tesla.drive();
tesla.driveCarAtMaxSpeed();
system.debug('Tesla--->' + tesla);

system.debug('------------------');
car honda = new car();
honda.carName = 'Honda bump';
honda.carColor = 'Orange';
//system.debug('Honda Max Speed ' + honda.maxSpeed); // this variable is not visable becuse it is private
honda.switchOn();
honda.drive();
honda.driveCarAtMaxSpeed();
system.debug('Honda-->' + honda);

system.debug('------------------');
car nissan = new car();
nissan.carName ='Nissan suv';
nissan.switchOn();
nissan.drive();
nissan.driveCarAtMaxSpeed();
system.debug('Nissan-->' + nissan);





//execute the anonymous apex