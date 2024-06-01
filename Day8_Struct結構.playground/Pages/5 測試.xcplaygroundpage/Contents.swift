//: [Previous](@previous)

import Foundation

//1️⃣
struct Diary {
    var entries: String
    mutating func add(entry: String) {
        entries += "\(entry)"
    }
}
var myDiary = Diary(entries: "第一天日記")
print(myDiary)  //Diary(entries: "第一天日記")
myDiary.add(entry: ", 第二天日記")
print(myDiary)  //Diary(entries: "第一天日記, 第二天日記")

//2️⃣
struct Surgeon {
    var operationsPerformed = 0
    mutating func operate(on patient: String) {
        print("Nurse, hand me the scalpel!")
        operationsPerformed += 1
    }
}
var mySurgeon = Surgeon()
print(mySurgeon)             //Surgeon(operationsPerformed: 0)
mySurgeon.operate(on: "隨意") //Nurse, hand me the scalpel!
print(mySurgeon)             //Surgeon(operationsPerformed: 1)


//3️⃣ ❌ 要mutating
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
var myStapler = Stapler(stapleCount: 1)
myStapler.staple()                      //It's stapled!
myStapler.staple()                      //Please refill me.



//4️⃣ ❌ Int 改 Double
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
var myTree = Tree(height: 1)
myTree.grow()
print(myTree.height)    //1.001


//5️⃣ ❌ 有mutating 屬性要是var
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
var myCar = Car(mileage: 10)
myCar.drive(distance: 5)
print(myCar.mileage)            //15

//6️⃣
struct Book {
    var totalPages: Int
    var pagesLeftToRead = 0
    mutating func read(pages: Int) {
        if pages < pagesLeftToRead {    //10 < 20
            pagesLeftToRead -= pages    //20 -= 10
        } else {
            pagesLeftToRead = 0
            print("I'm done!")
        }
    }
}
var myBook = Book(totalPages: 0, pagesLeftToRead: 10)
myBook.read(pages: 20)  //I'm done!

//7️⃣
struct BankAccount {
    var balance: Int
    mutating func donateToCharity(amount: Int) {
        balance -= amount
        print("最新的balance是 \(balance)")
    }
}
var myBankAccount = BankAccount(balance: 100)
myBankAccount.donateToCharity(amount: 50)       //最新的balance是 50

//8️⃣
struct Switch {
    var isOn: Bool
    mutating func toggle() {
        if isOn {
            isOn = false
            print("isOn是\(isOn)")
        } else {
            isOn = true //false 改成 true
            print("isOn是\(isOn)")
        }
    }
}
var mySwitch = Switch(isOn: false)
mySwitch.toggle()   //isOn是true

//9️⃣ ❌ 少 func
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
var myMeetingRoom = MeetingRoom()
myMeetingRoom.book(for: "總統套房") //Sorry, the meeting room is already taken.
myMeetingRoom.isBooked = false
myMeetingRoom.book(for: "員工套房") //It's reserved for 員工套房.

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
var myDelorean = Delorean()
myDelorean.speed = 87
myDelorean.accelerate()     //Where we're going we don't need roads.

//1️⃣1️⃣ ❌ bankBalance 型態改 Int
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
var mySinger = Singer(name: "我的", bankBalance: 1)
mySinger.goOnTour(venues: 2)    //Come and see 我的 live on stage!

//1️⃣2️⃣
struct Bicycle {
    var currentGear: Int
    mutating func changeGear(to newGear: Int) {
        currentGear = newGear
        print("I'm now in gear \(currentGear).")
    }
}
var myBicycle = Bicycle(currentGear: 1)
myBicycle.changeGear(to: 100)       //I'm now in gear 100.

//: [Next](@next)
