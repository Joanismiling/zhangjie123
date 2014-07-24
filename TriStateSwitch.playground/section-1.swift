import Cocoa

var str = "Hello, playground"




struct Point{
    var x = 0.0,y = 0.0
    mutating func moveByX(deltaX: Double,y deltaY: Double){
        self = Point(x : x + deltaX,deltaY + y : y)
    }
}



enum TriStateSwitch{
    case Off, Low, High
    mutating func next(){
        switch self{
        case Off:
            self = Low
        case Low:
            self = High
        case High:
            self = Off
        }
    }
}
var ovenLight = TriStateSwitch.Low
ovenLight.next()
ovenLight.next()


