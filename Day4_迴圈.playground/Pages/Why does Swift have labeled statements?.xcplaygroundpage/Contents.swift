//: [Previous](@previous)

import Foundation

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

//for option1 in options {
//    for option2 in options {
//        for option3 in options {
//            print("In loop")
//            let attempt = [option1, option2, option3]
//
//            if attempt == secretCombination {
//                print("The combination is \(attempt)!")
//            }
//        }
//    }
//}

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}


//: [Next](@next)
