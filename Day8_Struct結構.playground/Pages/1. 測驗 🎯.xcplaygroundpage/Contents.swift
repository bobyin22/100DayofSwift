//: [Previous](@previous)

import Foundation
//This code is valid Swift – true or false?
//Hint: When you create an instance of a struct, Swift will ask you to provide values for all its properties. These parameters must have the same names as the properties themselves, and must be in the same order they were defined.

//1️⃣ 生成實例的時候要給參數值，按照參數名寫
struct Order {
    var customerID: Int
    var itemID: Int
}
//let order = Order(customer: 143, item: 556)
let order = Order(customerID: 143, itemID: 556)

//2️⃣
struct ChessPiece {
    var name: String
    var value: Int
}
//3️⃣ struct 要大括號
//struct Dog (
//    var name: String
//    var breed: String
//)
struct Dog {
    var name: String
    var breed: String
}
//4️⃣
struct User {
    var name = "Anonymous"
    var age: Int
}
let twostraws = User(name: "Paul", age: 38)

//5️⃣
struct Phone {
    var manufacturer: String
    var screenSize: Double
}

//8️⃣ 屬性是什麼型別，實例化就要給什麼型別
struct LeviJeans {
    var fitNumber: Int
    var waist: Int
    var leg: Int
}
//let jeans = LeviJeans(fitNumber: "501", waist: "34", leg: "32")
let jeans = LeviJeans(fitNumber: 501, waist: 34, leg: 32)

//9️⃣
struct WeatherForecast {
    var dayNumber: Int
    var temperature: Int
}
let monday = WeatherForecast(dayNumber: 1, temperature: 25)

//1️⃣0️⃣
struct RubiksCube {
    var size = 3
}
//let large = RubiksCube(5)
let large = RubiksCube(size: 5)

//1️⃣1️⃣
struct Book {
    var title: String
    var author = "Unknown"
    var pageCount = 0
}
//1️⃣2️⃣
//struct Boat {
//    name: String
//    homePort: String
//    maxSpeed: Int
//}

struct Boat {
    var name: String
    var homePort: String
    var maxSpeed: Int
}

//: [Next](@next)
