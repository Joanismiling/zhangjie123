// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct Resolution{
    var width = 0
    var heigth = 0
}
class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate  = 0.0
    var name: String?
}
let tenEighty = VideoMode()
//tenEighty被声明为常量，值不变。改变的是引用VideoMode的参数
tenEighty.resolution = Resolution()
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
//同上
alsoTenEighty.frameRate = 30.0

println("The frameRate property of tenEighty is now \(tenEighty.frameRate)")