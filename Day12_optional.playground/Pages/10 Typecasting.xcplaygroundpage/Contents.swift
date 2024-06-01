//: [Previous](@previous)

import Foundation

class Animal { }

class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

//因為Fish Dog都繼承Animal
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()             //Woof! 代表該元素可以轉型成Dog屬性
    }                               //Woof! 代表該元素可以轉型成Dog屬性
}

//: [Next](@next)
