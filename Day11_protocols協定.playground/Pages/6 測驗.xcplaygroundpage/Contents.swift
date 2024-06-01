//: [Previous](@previous)

import Foundation

//1️⃣
protocol HasAge {
    var age: Int { get set }
    mutating func celebrateBirthday()
}
struct Person: HasAge {
    var age: Int
    mutating func celebrateBirthday() {
        print("人老了，80大壽")
    }
}
var person = Person(age: 80)
person.celebrateBirthday()      //人老了，80大壽

//2️⃣ 合法寫法
protocol Paintable { }
protocol Tileable { }
struct Wall: Paintable, Tileable { }

//3️⃣ 合法寫法
extension Collection {
    func describe() {
        if count == 1 {
            print("There is 1 item.")
        } else {
            print("There are \(count) items.")
        }
    }
}
let array :[Int] = [99, 100, 101]
array.describe()    //There are 3 items.

//4️⃣ 要有大括弧
//protocol Ridable
//protocol Trainable
//protocol Dog: Trainable
protocol Ridable {}
protocol Trainable {}
protocol Dog: Trainable {}

//5️⃣ 要有逗號
protocol NotAMoon { }
protocol HasExhaustPort { }
//struct DeathStar: NotAMoon HasExhaustPort { }
struct DeathStar: NotAMoon, HasExhaustPort { }

//6️⃣ protocol 才能遵從多個 protocol，struct不能
protocol CanFly {
    var maximumFlightSpeed: Int { get set }
}
protocol CanDrive {
    var maximumDrivingSpeed: Int { get set }
}
//struct FlyingCar: CanFly, CanDrive { }
protocol FlyingCar: CanFly, CanDrive { }

//7️⃣ 要有逗點
protocol TravelsThroughTime {
    mutating func travel(to year: Int)
}
protocol BiggerOnTheInside {
    func findSwimmingPool()
}
//protocol TARDIS: TravelsThroughTime BiggerOnTheInside {
//    var doctorNumber: Int { get set }
//}
protocol TARDIS: TravelsThroughTime, BiggerOnTheInside {
    var doctorNumber: Int { get set }
}

//8️⃣ 合法寫法
protocol Inflatable {
    mutating func refillAir()
}
extension Inflatable {
    mutating func refillAir() {
        print("Refilling the air.")
    }
}

//9️⃣ 合法寫法
protocol SuitableForKids {
    var minimumAge: Int { get set }
    var maximumAge: Int { get set }
}
protocol SupportsMultiplePlayers {
    var minimumPlayers: Int { get set }
    var maximumPlayers: Int { get set }
}
struct FamilyBoardGame: SuitableForKids, SupportsMultiplePlayers {
    var minimumAge = 3
    var maximumAge = 110
    var minimumPlayers = 1
    var maximumPlayers = 4
}

//1️⃣0️⃣ amount要有型別
protocol Adjustable {
//    mutating func adjustValue(by amount)
    mutating func adjustValue(by amount: Int)
}

//1️⃣1️⃣ 缺少 get 與 set
//protocol HasPages {
//    var pageCount: Int
//}
//protocol HasTableOfContents {
//    var titles: [String]
//}
//protocol Book: HasPages, HasTableOfContents {
//    var author: String
//}
protocol HasPages {
    var pageCount: Int {get set}
}
protocol HasTableOfContents {
    var titles: [String] {get set}
}
protocol Book: HasPages, HasTableOfContents {
    var author: String {get set}
}

//1️⃣2️⃣
protocol Identifiable {
    var id: Int { get set }
}

//: [Next](@next)
