//: [Previous](@previous)

import Foundation

//1️⃣
//struct Student {
//    var name: String
//    var sleepy: Bool
//    func study {
//        if sleepy {
//            print("I'm too tired right now.")
//        } else {
//            print("I'm hitting the books!")
//        }
//    }
//}
struct Student {
    var name: String
    var sleepy: Bool
    func study() {
        if sleepy {
            print("I'm too tired right now.")
        } else {
            print("I'm hitting the books!")
        }
    }
}
//2️⃣
//struct Event {
//    ticketPrices = [100, 200, 500]
//    func buyTickets(type: Int) {
//        let cost = ticketPrices[type]
//        print("That'll be $\(cost), please.")
//    }
//}
struct Event {
    let ticketPrices = [100, 200, 500]
    func buyTickets(type: Int) {
        let cost = ticketPrices[type]
        print("That'll be $\(cost), please.")
    }
}
//3️⃣
//func Desk {
//    var isAdjustable: Bool
//    func adjust(to newHeight: Int) {
//        if isAdjustable {
//            print("Adjusting now...")
//        } else {
//            print("That isn't possible.")
//        }
//    }
//}
struct Desk {
    var isAdjustable: Bool
    func adjust(to newHeight: Int) {
        if isAdjustable {
            print("Adjusting now...")
        } else {
            print("That isn't possible.")
        }
    }
}
//4️⃣
struct Pokemon {
    var name: String
    func attack(with attackType: String) {
        print("\(name) uses \(attackType)!")
    }
}
//5️⃣
//struct WaterBottle {
//    var capacity: Int
//    refill() {
//        print("Refilling up to \(capacity)ml.")
//    }
//}
struct WaterBottle {
    var capacity: Int
    func refill() {
        print("Refilling up to \(capacity)ml.")
    }
}
//6️⃣
struct Venue {
    var name: String
    var maximumCapacity: Int
    func makeBooking(for people: Int) {
        if people > maximumCapacity {
            print("Sorry, we can only accommodate \(maximumCapacity).")
        } else {
            print("\(name) is all yours!")
        }
    }
}
//7️⃣
struct User {
    var name: String
    var street: String
    var city: String
    var postalCode: String
    func printAddress() -> String {
        return """
        \(name)
        \(street)
        \(city)
        \(postalCode)
        """
    }
}
//8️⃣
//struct House {
//    var isExpensiveArea = "false"
//    var numberOfRooms: Int
//    method estimatePrice() -> Int {
//        if isExpensiveArea == true {
//            return numberOfRooms * 100_000
//        } else {
//            return numberOfRooms * 50_000
//        }
//    }
//}
struct House {
    var isExpensiveArea = false
    var numberOfRooms: Int
    func estimatePrice() -> Int {
        if isExpensiveArea == true {
            return numberOfRooms * 100_000
        } else {
            return numberOfRooms * 50_000
        }
    }
}
//9️⃣
struct XWing {
    var callSign: String
    func startTrenchRun() -> Bool {
        if callSign == "Red 5" {
            print("I'm going to blow up the Death Star!")
            return true
        } else {
            print("I'm hit!")
            return false
        }
    }
}
//1️⃣0️⃣
struct Car {
    var maxSpeed: Int
    func accelerate(to speed: Int) {
        if speed > maxSpeed {
            print("That's too fast!")
        } else {
            print("OK, let's go!")
        }
    }
}
//1️⃣1️⃣
//struct Jewellery {
//    var price: Double
//    func estimateInsurance() -> Double {
//        let value = price / 50.0
//        value
//    }
//}
struct Jewellery {
    var price: Double
    func estimateInsurance() -> Double {
        let value = price / 50.0
        return value
    }
}

//1️⃣2️⃣
struct Singer {
    var signatureSong: String
    func sing() {
        print("Who wants to hear \(signatureSong)?")
    }
}

//: [Next](@next)
