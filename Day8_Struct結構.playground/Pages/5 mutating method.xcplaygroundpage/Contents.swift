//: [Previous](@previous)

import Foundation

struct Person {
    var name: String

//    func makeAnonymous() {
//        name = "Anonymous"
//    }
    
    //struct 不會讓你改屬性，除非你加上mutating
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")     //Person.name 是 "Ed"
person.makeAnonymous()              //Person.name 是 "Anonymous"

//: [Next](@next)
