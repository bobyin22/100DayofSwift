//: [Previous](@previous)

import Foundation

//class必須要init，而且是自己寫
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "小黃", breed: "台灣土狗")
print(poppy.name, poppy.breed)        //小黃 台灣土狗


//: [Next](@next)
