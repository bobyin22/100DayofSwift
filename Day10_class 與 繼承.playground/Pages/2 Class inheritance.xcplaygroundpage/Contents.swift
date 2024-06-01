//: [Previous](@previous)

import Foundation

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//原則1 屬性的初始，必須在當初宣告屬性的類別裡進行
//原則2 子類別得先完成自己屬性的初始後，才能進行父類別屬性的初始
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
let poodle = Poodle(name: "阿呆貴賓犬")
print(poodle.name, poodle.breed)    //阿呆貴賓犬 Poodle

//: [Next](@next)
