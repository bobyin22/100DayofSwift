//: [Previous](@previous)

import Foundation

//1️⃣
struct Order {
    var customerID: Int
    var itemID: Int
}
let order = Order(customerID: 143, itemID: 556)

//2️⃣
struct ChessPiece {
    var name: String
    var value: Int
}

//3️⃣ ❌ 大括弧
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


//8️⃣ ❌ 要用Int
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

//1️⃣0️⃣ ❌ 要有參數名
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

//1️⃣2️⃣ struct內屬性 要var 或是 let
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
