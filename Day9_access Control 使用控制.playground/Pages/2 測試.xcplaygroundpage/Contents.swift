//: [Previous](@previous)

import Foundation

//1️⃣
struct Conference {
    var name: String
    var location: String
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
let wwdc = Conference(name: "WWDC", location: "San Jose")
print(wwdc.name, wwdc.location)     //WWDC San Jose

//2️⃣
struct SuperHero {
    var nickname: String
    var powers: [String]
    init(nickname: String, superPowers: [String]) {
        self.nickname = nickname
        self.powers = superPowers
    }
}
let batman = SuperHero(nickname: "The Caped Crusader", superPowers: ["He's really rich"])
print(batman.nickname, batman.powers) //The Caped Crusader ["He\'s really rich"]

//3️⃣
struct Kitchen {
    var utensils: [String]
    init(utensils: [String]) {
        self.utensils = utensils
    }
}
let myKitchen = Kitchen(utensils: ["鍋", "碗", "瓢", "盆"])
print(myKitchen.utensils)   //["鍋", "碗", "瓢", "盆"]

//4️⃣ ❌ tirednessPercent 沒有被賦值
//struct Parent {
//    var numberOfKids: Int
//    var tirednessPercent: Int
//    init (kids: Int) {
//        self.numberOfKids = kids
//    }
//}
struct Parent {
    var numberOfKids: Int
    var tirednessPercent: Int
    init (kids: Int, percent: Int) {
        self.numberOfKids = kids
        self.tirednessPercent = percent
    }
}
//let james = Parent(kids: 2)
let james = Parent(kids: 2, percent: 100)
print(james.numberOfKids, james.tirednessPercent)   //2 100

//5️⃣ ❌ 實例時後 參數要依據 init english 而不是 nameEnglish
struct Language {
    var nameEnglish: String
    var nameLocal: String
    var speakerCount: Int
    init(english: String, local: String, speakerCount: Int) {
        self.nameEnglish = english
        self.nameLocal = local
        self.speakerCount = speakerCount
    }
}
//let french = Language(nameEnglish: "French", nameLocal: "français", speakerCount: 220_000_000)
let french = Language(english: "French", local: "français", speakerCount: 220_000_000)
print(french.nameEnglish, french.nameLocal, french.speakerCount)    //French français 220000000

//6️⃣ ❌ 屬性型別 要與init型別 一致
//struct Bus {
//    var routeNumber: String
//    init(route: Int) {
//        self.routeNumber = route
//    }
//}
struct Bus {
    var routeNumber: Int
    init(route: Int) {
        self.routeNumber = route
    }
}
let myBus = Bus(route: 57)
print(myBus.routeNumber)    //57


//7️⃣ ❌ meowVolume 沒給值
//struct Cat {
//    var name: String
//    var breed: String
//    var meowVolume: Int
//    init(name: String, breed: String) {
//        self.name = name
//        self.breed = breed
//    }
//}
struct Cat {
    var name: String
    var breed: String
    var meowVolume: Int
    init(name: String, breed: String, volume: Int) {
        self.name = name
        self.breed = breed
        self.meowVolume = volume
    }
}
//let toby = Cat(name: "Toby", breed: "Burmese")
let toby = Cat(name: "Toby", breed: "Burmese", volume: 98)
print(toby.name, toby.breed, toby.meowVolume)   //Toby Burmese 98

//8️⃣
struct Character {
    var name: String
    var actor: String
    var probablyGoingToDie: Bool
    init(name: String, actor: String) {
        self.name = name
        self.actor = actor
        if self.actor == "Sean Bean" {
            probablyGoingToDie = true
        } else {
            probablyGoingToDie = false
        }
    }
}
let myCharacter = Character(name: "傑克", actor: "李奧納多")
print(myCharacter.name, myCharacter.actor, myCharacter.probablyGoingToDie)  //傑克 李奧納多 false

//9️⃣
struct Cottage {
    var rooms: Int
    var rating = 5
    init(rooms: Int) {
        self.rooms = rooms
    }
}
let bailbrookHouse = Cottage(rooms: 4)
print(bailbrookHouse.rooms, bailbrookHouse.rating)  //4 5


//1️⃣0️⃣ ❌ init 不用加上 func
//struct Framework {
//    var name: String
//    var language: String
//    func init(name: String, language: String) {
//        self.name = name
//        self.language = language
//    }
//}
struct Framework {
    var name: String
    var language: String
    init(name: String, language: String) {
        self.name = name
        self.language = language
    }
}
let vapor = Framework(name: "Vapor", language: "Swift")
print(vapor.name, vapor.language)   //Vapor Swift
    
//1️⃣1️⃣ ❌ self.ram 要改 self.ramGB
//struct Computer {
//    var cpus: String
//    var ramGB: String
//    init(cpus: String, ram: String) {
//        self.cpus = cpus
//        self.ram = ram
//    }
//}
struct Computer {
    var cpus: String
    var ramGB: String
    init(cpus: String, ram: String) {
        self.cpus = cpus
        self.ramGB = ram
    }
}
let myComputer = Computer(cpus: "8核心", ram: "16GB")
print(myComputer.cpus, myComputer.ramGB)    //8核心 16GB

//1️⃣2️⃣
struct District {
    var number: Int
    var supervisor: String
    init(number: Int, supervisor: String) {
        self.number = number
        self.supervisor = supervisor
    }
}
let district = District(number: 9, supervisor: "Unknown")
print(district.number, district.supervisor) //9 Unknown

//: [Next](@next)
