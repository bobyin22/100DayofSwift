//: [Previous](@previous)

import Foundation

//之前 force upwrape 例子
let str = "5"
let num = Int(str)
print(num)          //Optional(5)


struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
let person = Person(id: "12345678")
print(person?.id)                       //nil

let person1 = Person(id: "123456789")
print(person1?.id)                      //Optional("123456789")

//: [Next](@next)
