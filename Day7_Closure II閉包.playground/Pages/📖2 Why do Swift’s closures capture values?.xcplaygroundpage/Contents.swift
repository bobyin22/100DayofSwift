//: [Previous](@previous)

import Foundation
var previousNumber = 0
func makeRandomNumberGenerator2() -> () -> Int {
//    var previousNumber = 0
    return {
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}

let generator2 = makeRandomNumberGenerator2()

for _ in 1...10 {
    print(generator2())
}

//: [Next](@next)
