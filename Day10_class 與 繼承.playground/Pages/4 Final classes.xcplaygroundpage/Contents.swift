//: [Previous](@previous)

import Foundation

//當你將一個類別宣告為 Final 時，其他類別就不能繼承它。這意味著他們不能重寫你的方法來改變你的行為
final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


//❌報錯
//class Poppy: Dog {
//    
//}
//let myPoppy = Dog(name: "a", breed: "2")

//: [Next](@next)
