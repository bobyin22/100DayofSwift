//: [Previous](@previous)

import Foundation

//1️⃣ ❌方法要()
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
let myStduent = Student(name: "慧珊", sleepy: true)
myStduent.study()   //I'm too tired right now.

//2️⃣ ❌ 要有變數
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
var myEvent = Event()
myEvent.buyTickets(type: 0) //That'll be $100, please.

//3️⃣ ❌ 要是struct 或 class
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
let myDesk = Desk(isAdjustable: false)
myDesk.adjust(to: 100)  //That isn't possible.

//4️⃣
struct Pokemon {
    var name: String
    func attack(with attackType: String) {
        print("\(name) uses \(attackType)!")
    }
}
let myPokemon = Pokemon(name: "皮卡丘")
myPokemon.attack(with: "十萬伏特")  //皮卡丘 uses 十萬伏特!

//5️⃣
//struct WaterBottle {
//    var capacity: Int
//    refill() {
//        print("Refilling up to \(capacity)ml.")
//    }
//}
struct WaterBottle {
    var capacity: Int {
        willSet {
            print("Refilling up to \(capacity)ml.")
        }
        didSet {
            print("Refilling up to \(capacity)ml. 完成")
        }
    }
    
}
var myWaterBottle = WaterBottle(capacity: 500)
myWaterBottle.capacity = 600        //Refilling up to 500ml.
                                    //Refilling up to 600ml. 完成


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
let myVenue = Venue(name: "女神", maximumCapacity: 100)
myVenue.makeBooking(for: 101)   //Sorry, we can only accommodate 100.

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
let myUser = User(name: "Yin", street: "ABC 路", city: "台北", postalCode: "235")
myUser.printAddress()   //回傳 Yin
                        //ABC 路
                        //台北
                        //235

//8️⃣ ❌ 加上 func 與 "false" 改 false
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
var myHouse = House(isExpensiveArea: false, numberOfRooms: 1)
myHouse.estimatePrice() //  回傳50,000

myHouse.isExpensiveArea = true
myHouse.estimatePrice() //  回傳100,000


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
let myXWing = XWing(callSign: "Red 6")
myXWing.startTrenchRun()        //I'm hit!  回傳false

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
let myCar = Car(maxSpeed: 100)
myCar.accelerate(to: 101)      //That's too fast!

//1️⃣1️⃣ ❌ 要有return
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
let myJewellery = Jewellery(price: 100.0)
myJewellery.estimateInsurance() //回傳 2

//1️⃣2️⃣
struct Singer {
    var signatureSong: String
    func sing() {
        print("Who wants to hear \(signatureSong)?")
    }
}
let mySinger = Singer(signatureSong: "月亮代表我的心")
mySinger.sing()     //Who wants to hear 月亮代表我的心?

//: [Next](@next)
