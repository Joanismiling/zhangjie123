// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


var index = 0
for x in 1...9
{
    for y in 1...9
    {
    index = x * y
    println("\(index) = \(x) * \(y)")
    }
}
