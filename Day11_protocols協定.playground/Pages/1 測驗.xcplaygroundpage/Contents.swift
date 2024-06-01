import UIKit

//1️⃣ ❌ 屬性要有 型別
//protocol Swimmable {
//    var depth { get }
//}
protocol Swimmable {
    var depth: Int { get }
}
struct SwimmingPool: Swimmable {
    var depth: Int
    var name: String
}
let swimmingPool = SwimmingPool(depth: 2, name: "永和運動中心")
print(swimmingPool.depth, swimmingPool.name)    //2 永和運動中心

struct River: Swimmable {
    var depth: Int
    var name: String
}
let river = River(depth: 5, name: "淡水河")
print(river.depth, river.name)                  //5 淡水河

//2️⃣
protocol Purchaseable {
    var price: Double { get set }
    var currency: String { get set }
}
struct Bag : Purchaseable {
    var price: Double
    var currency: String
    var name: String
}
var bag = Bag(price: 1_000.00, currency: "新台幣", name: "愛迪達")
print(bag.price, bag.currency, bag.name)    //1000.0 新台幣 愛迪達
bag.price = 2_000.00
bag.currency = "美金"
print(bag.price, bag.currency, bag.name)    //2000.0 美金 愛迪達

//3️⃣
protocol Climbable {
    var height: Double { get }
    var gradient: Int { get }
}
struct Cliff: Climbable {
    var height: Double
    var gradient: Int
    var name: String
}
let cliff = Cliff(height: 10.0, gradient: 20, name: "清水斷崖")
//cliff.height = 20.0 //屬性因為是get，所以不能改
print(cliff.height, cliff.gradient, cliff.name)             //10.0 20 清水斷崖

struct Mountain: Climbable {
    var height: Double
    var gradient: Int
    var name: String
}
let mountain = Mountain(height: 20.0, gradient: 5, name: "玉山")
print(mountain.height, mountain.gradient, mountain.name)    //20.0 5 玉山

//4️⃣ ❌ get set 中間不用逗點
//protocol Mailable {
//    var width: Double { get, set }
//    var height: Double { get, set }
//}
protocol Mailable {
    var width: Double { get set }
    var height: Double { get set }
}

//5️⃣ ❌ 協定內的屬性，需要宣告寫var 或是 let
//protocol Strokeable {
//    fluffiness: Int { get }
//}
protocol Strokeable {
    var fluffiness: Int { get }
}

//6️⃣
protocol Learnable {
    var difficulty: Int { get }
}

//7️⃣
protocol Washable {
    var dirtinessLevel: Int { get set }
}

//8️⃣ ❌struct class屬性 默認是可讀，可寫
//struct Knittable {
//    var needleSizes: [Double] { get set }     //struct屬性 默認是可讀，可寫
//}
protocol Knittable {
    var needleSizes: [Double] { get set }
}
//class Knittable {
//    var needleSizes: [Double] { get set }     //class屬性 默認是可讀，可寫
//}

//9️⃣
protocol Singable {
    var lyrics: [String] { get set }
    var notes: [String] { get set }
}

//1️⃣0️⃣
protocol Plantable {
    var requirements: [String] { get set }
}

//1️⃣1️⃣ ❌ 不能只寫set，不讀get，最基本一定要有get
//protocol Buildable {
//    var numberOfBricks: Int { set }
//    var materials: [String] { set }
//}
protocol Buildable {
    var numberOfBricks: Int { get set }
    var materials: [String] { get set }
}

//1️⃣2️⃣
//protocol Liftable {
//    var weight: Double get set
//}
protocol Liftable {
    var weight: Double { get set }
}

