// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


class Vehicle{
    var  numberOfWheels:Int
    var  numberOfPassengers:Int
    func description() ->String{
    return"\(numberOfWheels) Wheels;up to \(numberOfPassengers) Passengers"
    }
    init (){
    numberOfWheels = 0
    numberOfPassengers = 1
    }
}
class car:Vehicle{
    var speed = 0.0
    init(){
    super.init()
    numberOfWheels = 4
    numberOfPassengers = 5
    }
}
override func description() ->String{
return super.descrition() + "; at \(speed) mph"
}
