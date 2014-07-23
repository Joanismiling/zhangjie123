// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


var array = Array<Array<Int>>()
for i in 0...6{
   array.append( Array(count:7,repeatedValue:0))
}
array
var x = 0,y = 0,i = 0,j = 0,index = 0
for x = 0;x < 4;x++ {
    i = x
    j = x
    for i in x...6-x {
    index++
        array[i][j] = index
    }
    index--
    i = 6-x
    for j in x...6-x {
    index++
        array[i][j] = index
    }
    index--
    j = 6-x
    for i = 6-x;i >= x;i-- {
    index++
        array[i][j] = index
    }
    index--
    i = x
    for j = 6-x;j > x ;j-- {
    index++
        array[i][j] = index
    }
}
for i in 0...6 {
    for j in 0...6
    {
        if array[i][j] < 10 {
            print("0\(array[i][j]) ")
        } else {
        print(" \(array[i][j]) ")
    }
    }
    print("\n")
}

