//: [Previous](@previous)

import Foundation

var numberOfLinesLogged = 0

let logger1 = {
    numberOfLinesLogged += 1
    print("Lines logged: \(numberOfLinesLogged)")
}

logger1()   //Lines logged: 1

let logger2 = logger1           //因為logger1 logger2變數都是指向 numberOfLinesLogged變數的值
logger2()   //Lines logged: 2
logger1()   //Lines logged: 3
logger2()   //Lines logged: 4

//: [Next](@next)
