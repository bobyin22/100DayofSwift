//: [Previous](@previous)

import Foundation

//1️⃣
struct Diary {
    var entries: String
    mutating func add(entry: String) {
        entries += "\(entry)"
    }
}
var diary = Diary(entries: "後門")
diary.add(entry: "前門")
print(diary.entries)    //後門前門

//2️⃣
struct Surgeon {
    var operationsPerformed = 0
    mutating func operate(on patient: String) {
        print("Nurse, hand me the scalpel!")
        operationsPerformed += 1
    }
}
//3️⃣
//struct Stapler {
//    var stapleCount: Int
//    func staple() {
//        if stapleCount > 0 {
//            stapleCount -= 1
//            print("It's stapled!")
//        } else {
//            print("Please refill me.")
//        }
//    }
//}
struct Stapler {
    var stapleCount: Int
    mutating func staple() {
        if stapleCount > 0 {
            stapleCount -= 1
            print("It's stapled!")
        } else {
            print("Please refill me.")
        }
    }
}
//4️⃣
//struct Tree {
//    var height: Int
//    mutating func grow() {
//        height *= 1.001
//    }
//}
struct Tree {
    var height: Double
    mutating func grow() {
        height *= 1.001
    }
}

//5️⃣ ⭐️ mileage 是用let寫，mutating改不動
//struct Car {
//    let mileage: Int
//    mutating func drive(distance: Int) {
//        mileage += distance
//    }
//}
struct Car {
    var mileage: Int
    mutating func drive(distance: Int) {
        mileage += distance
    }
}
//6️⃣
struct Book {
    var totalPages: Int
    var pagesLeftToRead = 0
    mutating func read(pages: Int) {
        if pages < pagesLeftToRead {
            pagesLeftToRead -= pages
        } else {
            pagesLeftToRead = 0
            print("I'm done!")
        }
    }
}
//7️⃣
struct BankAccount {
    var balance: Int
    mutating func donateToCharity(amount: Int) {
        balance -= amount
    }
}
//8️⃣
//struct Switch {
//    var isOn: Bool
//    mutating func toggle {
//        if isOn {
//            isOn = false
//        } else {
//            isOn = true
//        }
//    }
//}
struct Switch {
    var isOn: Bool
    mutating func toggle() {
        if isOn {
            isOn = false
        } else {
            isOn = true
        }
    }
}
//9️⃣
//struct MeetingRoom {
//    var isBooked = true
//    mutating book(for name: String) {
//        if isBooked {
//            print("Sorry, the meeting room is already taken.")
//        } else {
//            isBooked = true
//            print("It's reserved for \(name).")
//        }
//    }
//}
struct MeetingRoom {
    var isBooked = true
    mutating func book(for name: String) {
        if isBooked {
            print("Sorry, the meeting room is already taken.")
        } else {
            isBooked = true
            print("It's reserved for \(name).")
        }
    }
}
//1️⃣0️⃣
struct Delorean {
    var speed = 0
    mutating func accelerate() {
        speed += 1
        if speed == 88 {
            travelThroughTime()
        }
    }
    func travelThroughTime() {
        print("Where we're going we don't need roads.")
    }
}
//1️⃣1️⃣
//struct Singer {
//    var name: String
//    var bankBalance: Double
//    mutating func goOnTour(venues: Int) {
//        print("Come and see \(name) live on stage!")
//        bankBalance += venues * 100_000
//    }
//}
struct Singer {
    var name: String
    var bankBalance: Int
    mutating func goOnTour(venues: Int) {
        print("Come and see \(name) live on stage!")
        bankBalance += venues * 100_000
    }
}
//1️⃣2️⃣
struct Bicycle {
    var currentGear: Int
    mutating func changeGear(to newGear: Int) {
        currentGear = newGear
        print("I'm now in gear \(currentGear).")
    }
}

//: [Next](@next)
