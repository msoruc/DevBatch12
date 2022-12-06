public class Car {
    // variables are inside the class not methods
    public string carColor ='';
    public string carName;
    // if we dont write access modifier, default weill be Private
    integer maxSpeed = 150;

   public void switchOn(){
    system.debug('Starting the Car');
    }

    public void drive(){
        system.debug('driving ' + carName + ', color is ' + carColor);
    }

    public void driveCarAtMaxSpeed(){
        String driveingDescription = 'Driving ' +carName + ', color is ' + carColor + ' at ' +maxSpeed + ' mile/h';
        system.debug(driveingDescription);

    }
    
}

//Deploy the class