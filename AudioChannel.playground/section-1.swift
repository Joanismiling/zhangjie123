// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


struct AudioChannel{
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0{
    didSet{
        if currentLevel > AudioChannel.thresholdLevel{
            currentLevel = AudioChannel.thresholdLevel
            
        }
        if currentLevel > AudioChannel.maxInputLevelForAllChannels{
            AudioChannel.maxInputLevelForAllChannels = currentLevel
        }
    }
    }
}
var leftChannel = AudioChannel()
var rightChannel = AudioChannel()
leftChannel.currentLevel = 7
println(leftChannel.currentLevel)
println(AudioChannel.maxInputLevelForAllChannels)
rightChannel.currentLevel = 11
println(rightChannel.currentLevel)
println(AudioChannel.maxInputLevelForAllChannels)
//willSet 在设置新的值之前调用
// didSet  在新的值被设置之后立即调用