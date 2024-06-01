//: [Previous](@previous)

import Foundation

//🥵 有太多重複屬性
//protocol Computer {
//    var price: Double { get set }
//    var weight: Int { get set }
//    var cpu: String { get set }
//    var memory: Int { get set }
//    var storage: Int { get set }
//}
//
//protocol Laptop {
//    var price: Double { get set }
//    var weight: Int { get set }
//    var cpu: String { get set }
//    var memory: Int { get set }
//    var storage: Int { get set }
//    var screenSize: Int { get set }
//}

//😎 有太多重複屬性
protocol Product {
    var price: Double { get set }
    var weight: Int { get set }
}
struct Shoes: Product {
    var price: Double
    var weight: Int
}
protocol Computer: Product {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}
protocol Laptop: Computer {
    var screenSize: Int { get set }
}
struct laptop_Struct: Laptop {
    var screenSize: Int
    var cpu: String
    var memory: Int
    var storage: Int
    var price: Double
    var weight: Int
}
var MacLaptop = laptop_Struct(screenSize: 24, cpu: "16G", memory: 16, storage: 512, price: 31_000, weight: 500)


//: [Next](@next)
