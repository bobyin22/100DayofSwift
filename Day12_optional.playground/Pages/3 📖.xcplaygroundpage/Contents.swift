//: [Previous](@previous)

import Foundation

func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)     //會印出原因是getMeaning不是nil，if let name會被賦值42
    }
}

printMeaningOfLife()    //42


func printMeaningOfLife1() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
    print(name + 10)
}
printMeaningOfLife1()   //42
                        //52

//: [Next](@next)
