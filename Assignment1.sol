pragma solidity ^0.8.0;

//Step-1
contract ParentVehicle {
    
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
contract AltoMehran is Cars {

}

contract Hino is Truck {
    
}

contract Yamaha is MotorCycle {
    
}

//Step-4 calling a function/method of a deployed contract
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