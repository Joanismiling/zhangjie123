// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let digitNames = [
    0:"Zero", 1:"One", 2:"Two", 3:"Three", 4:"Four",
    5:"Five", 6:"Six", 7:"Seven", 8:"Eight", 9:"Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map{
 (var number) -> String in
var output = ""
while number > 0{
output = digitNames[number % 10]! + output
    /*数字映射到字符*/
number /= 10
}
return output
}