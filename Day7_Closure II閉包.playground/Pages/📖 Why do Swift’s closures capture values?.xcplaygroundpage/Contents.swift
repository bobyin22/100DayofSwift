//: [Previous](@previous)

import Foundation

func makeRandomNumberGenerator() -> () -> Int {
    return {
        var previousNumber = 0
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}

let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}
                        //1
                        //2
                        //2
                        //3
                        //3
                        //2
                        //3
                        //1
                        //3
                        //2


//: [Next](@next)
