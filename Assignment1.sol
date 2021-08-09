pragma solidity ^0.8.0;

//Step-1
//1) Create a first "ParentVehicle" contract that includes the following functions
//start - returns String message” The Vehicle has just Started”
//accelerate - returns String message” The Vehicle has just Accelerated”
//stop -- returns String message” The Vehicle has just Stopped”
//service- returns String message” The Vehicle is being serviced”
//contract ParentVehicle {
    
    function start () public returns (string memory){
        return "The Vehicle has just started";
    }
    
    function accelerate () public returns (string memory){
        return "The Vehicle has just accelerated";
    }
    
    function stop () public returns (string memory){
        return "The Vehicle has just stopped";
    }
    
    function service () public virtual returns (string memory){
        return "The Vehicle is being serviced";
    }
    
}

//Step-2
//Next Create following Child contracts for a different type of vehicles, that inherits Vehicle
//Cars
//Truck
//MotorCycle,
//(The contract shall override the Service Method to return, w Cars/ Truck/ Motor Cycle is being serviced)

contract Cars is ParentVehicle{
    function service() public override returns (string memory){
        return "The Car is being serviced";
    }
}

contract Truck is ParentVehicle{
    function service() public override returns (string memory){
        return "The Truck is being serviced";
    }
}

contract MotorCycle is ParentVehicle{
    function service() public override returns (string memory){
        return "The MotorCycle is being serviced";
    }
}

//Step-3
//3) Then create smart contracts for “Alto Mehran, “ Hino, Yamaha, that may inherit the relevant smart contract(s) as in step 2.

contract AltoMehran is Cars {

}

contract Hino is Truck {
    
}

contract Yamaha is MotorCycle {
    
}

//Step-4 
//4)Create 3 Service Stations for each vehicle type, with the same
//function “vehicleService that takes the address of the deployed
//contracts of step 3, in the “Vehicle” variable to call the service
//function

contract serviceStation1 {
function doService(address add) public returns (string memory) {
    AltoMehran a = AltoMehran(add);
    return a.service();
    }
}

contract serviceStation2 {
    function doService(address add) public returns (string memory) {
    Hino h = Hino(add);
    return h.service();
    }
}

contract serviceStation3 {
    function doService(address add) public returns (string memory) {
    Yamaha y = Yamaha(add);
    return y.service();
    }
}
