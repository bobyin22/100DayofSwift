//: [Previous](@previous)

import Foundation

//1️⃣
protocol MakesDiagnoses {
    func evaluate(patient: String) -> String
}
protocol PrescribesMedicine {
    func prescribe(drug: String)
}
protocol Doctor: MakesDiagnoses, PrescribesMedicine { }

struct TW_Doctor: Doctor {
    func evaluate(patient: String) -> String {
        print("診斷\(patient)的病情")
        return "診斷\(patient)的病情"
    }
    func prescribe(drug: String) {
        print("提供\(drug)抑制病情")
    }
}
let myDoctor = TW_Doctor()
myDoctor.evaluate(patient: "黃XX")   //診斷黃XX的病情
myDoctor.prescribe(drug: "安眠藥")    //提供安眠藥抑制病情


//2️⃣ ❌ 協定內屬性一定至少要 get
//protocol Buyable {
//    var cost: Int
//}
protocol Buyable {
    var cost: Int {get}
}
protocol Sellable {
    func findBuyers(a1: String) -> [String]
}
protocol FineArt: Buyable, Sellable { }

struct TW_FineArt: FineArt {
    var cost: Int
    func findBuyers(a1: String) -> [String] {
        print("找尋買主\(a1)")
        return [a1]
    }
}
var myArt = TW_FineArt(cost: 2_000_000)
myArt.findBuyers(a1: "川普")              //找尋買主川普


//3️⃣
protocol CarriesPassengers {
    var passengerCount: Int { get set }
}
protocol CarriesCargo {
    var cargoCapacity: Int { get set }
}
protocol Boat: CarriesPassengers, CarriesCargo {
    var name: String { get set }
}

//4️⃣
protocol GivesOrders {
    func makeItSo()
}
protocol OrdersDrinks {
    func teaEarlGrey(hot: Bool)
}
protocol StarshipCaptain: GivesOrders, OrdersDrinks { }

//5️⃣ ❌ 函式需要括弧
//protocol Scoreable {
//    func add
//}
//protocol Winnable {
//    func makeWinningSpeech
//}
protocol Scoreable {
    func add()
}
protocol Winnable {
    func makeWinningSpeech()
}
protocol Competitor: Scoreable, Winnable { }

//6️⃣ ❌ 協定需要大括弧
protocol Readable {
    func read() -> String
}
protocol Writeable {
    func write(string: String)
}
//protocol NetworkSocket: Readable, Writeable
protocol NetworkSocket: Readable, Writeable {}

//7️⃣ ❌如果汽車結構直接遵從 HasEngine、HasTrunk 協定，就要寫上他們各自的方法
protocol HasEngine {
    func startEngine()
}
protocol HasTrunk {
    func openTrunk()
}
struct Car: HasEngine, HasTrunk {   //如果汽車結構直接遵從 HasEngine、HasTrunk 協定，就要繼承上他們各自的方法
    func startEngine() {
        print("引擎是...牌子")
    }
    func openTrunk() {
        print("可以打開車廂")
    }
}

//8️⃣
protocol HasMindTricks {
    func waveHandMystically()
}
protocol UsesForce {
    func raiseXWing()
}
protocol JediKnight: HasMindTricks, UsesForce { }

//9️⃣
protocol LikesTravel {
    func visit(place: String)
}
protocol BuySouvenirs {
    func buy(item: String)
}
protocol Tourist: LikesTravel, BuySouvenirs { }

//1️⃣0️⃣ ❌ 兩個協定之間 需要，逗點
protocol HasRooms {
    var roomCount: Int { get set }
}
protocol ServesFood {
    var openingTime: Int { get set }
}
//protocol Hotel: HasRooms ServesFood {
//    var starRating: Int { get set }
//}
protocol Hotel: HasRooms, ServesFood {
    var starRating: Int { get set }
}

//1️⃣1️⃣
protocol TimeTraveler {
    func travel(to year: Int)
}
protocol HuntsPeople {
    func locateJohnConnor()
}
protocol Terminator: TimeTraveler, HuntsPeople { }

//1️⃣2️⃣ ❌ struct內屬性默認就是 get set，protocol才需要判別
//     ❌ struct是沒有繼承的

//struct Collectible {
//    var rarity: Int { get set }
//}
//struct Tradeable {
//    var condition: String { get }
//}
protocol Collectible {
    var rarity: Int { get set }
}
protocol Tradeable {
    var condition: String { get }
}
protocol ClassicToy: Collectible, Tradeable { }

//: [Next](@next)
