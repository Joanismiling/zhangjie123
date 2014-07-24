// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


struct LevelTracker{
    static var highesUnlockedLevel = 1
    static func unlockLevel(level:Int){
        if level > highesUnlockedLevel{highesUnlockedLevel = level}
    }
    static func levelIsUnlocked(level:Int) ->Bool{
    return level <= highesUnlockedLevel
    }
    var currentLevel = 1
    mutating func advanceToLevel(level:Int) -> Bool{
        if LevelTracker.levelIsUnlocked(level){
            currentLevel = level
            return true
        }else
        {
            return false
        }
    }
}
class Player{
    var tracker = LevelTracker()
    let playerName:String
    func completedLevel(level :Int){
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    init(name:String){
    playerName = name
    }
}
var player = Player(name:"Argyrios")
player.completedLevel(1)
println("highest unlocked level is now \(LevelTracker.highesUnlockedLevel)")
 player = Player(name:"Beto")
if player.tracker.advanceToLevel(6){
    println("player is now on level 6")
}else{
    println("level 6 has not yet been unlocked")
}