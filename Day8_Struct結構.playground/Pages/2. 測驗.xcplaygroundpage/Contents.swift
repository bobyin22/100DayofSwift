//: [Previous](@previous)

import Foundation

//1️⃣ ❌ computed property 要有型別
//struct Code {
//    var language: String
//    var containsErrors = false
//    var report {
//        if containsErrors {
//            return "This \(language) code has bugs!"
//        } else {
//            return "This looks good to me."
//        }
//    }
//}
struct Code {
    var language: String
    var containsErrors = false
    var report: String {
        if containsErrors {
            return "This \(language) code has bugs!"
        } else {
            return "This looks good to me."
        }
    }
}

let a1 = Code(language: "C語言", containsErrors: true)
print(a1.report)        //This C語言 code has bugs!

//2️⃣ ❌ population 型別是Int
//struct City {
//    var population: String
//    var description: String {
//        if population < 100_000 {
//            return "This is a small city."
//        } else if population < 1_000_000 {
//            return "This is a medium-sized city."
//        } else {
//            return "This is a large city."
//        }
//    }
//}
struct City {
    var population: Int
    var description: String {
        if population < 100_000 {
            return "This is a small city."
        } else if population < 1_000_000 {
            return "This is a medium-sized city."
        } else {
            return "This is a large city."
        }
    }
}
let tokyo = City(population: 12_000_000)
print(tokyo.description)    //This is a large city.


//3️⃣ ❌ computed property 要 var
//struct Candle {
//    var burnLength: Int
//    var alreadyBurned = 0
//    let burnRemaining: Int {
//        return burnLength - alreadyBurned
//    }
//}
struct Candle {
    var burnLength: Int
    var alreadyBurned = 0
    var burnRemaining: Int {
        return burnLength - alreadyBurned
    }
}

let a2 = Candle(burnLength: 2)
print(a2.burnRemaining)         //2


//4️⃣
struct Wine {
    var age: Int
    var isVintage: Bool
    var price: Int {
        if isVintage {
            return age + 20
        } else {
            return age + 5
        }
    }
}
let malbec = Wine(age: 2, isVintage: true)
print(malbec.price)     //22


//5️⃣
struct Medicine {
    var amount: Int
    var frequency: Int
    var dosage: String {
        return "Take \(amount) pills \(frequency) times a day."
    }
}
let a3 = Medicine(amount: 5, frequency: 1)
print(a3.dosage)        //Take 5 pills 1 times a day.


//8️⃣ ❌ rating 是 String 所以要回傳String
//struct Dog {
//    var breed: String
//    var cuteness: Int
//    var rating: String {
//        if cuteness < 3 {
//            print("That's a cute dog!")
//        } else if cuteness < 7 {
//            print("That's a really cute dog!")
//        } else {
//            print("That a super cute dog!")
//        }
//    }
//}
struct Dog {
    var breed: String
    var cuteness: Int
    var rating: String {
        if cuteness < 3 {
            return "That's a cute dog!"
        } else if cuteness < 7 {
            return "That's a really cute dog!"
        } else {
            return "That a super cute dog!"
        }
    }
}
let luna = Dog(breed: "Samoyed", cuteness: 11)
print(luna.rating)      //That a super cute dog!


//9️⃣ ❌ if 判斷式要完全，才能正確回傳String值給 computed property
//struct Sunglasses {
//    var protectionLevel: Int
//    var visionTest: String {
//        if protectionLevel < 3 {
//            return "These aren't very dark"
//        } else if protectionLevel < 6 {
//            return "These are just right"
//        } else if protectionLevel < 10 {
//            return "Who turned the lights out?"
//        }
//    }
//}
struct Sunglasses {
    var protectionLevel: Int
    var visionTest: String {
        if protectionLevel < 3 {
            return "These aren't very dark"
        } else if protectionLevel < 6 {
            return "These are just right"
        } else if protectionLevel < 10 {
            return "Who turned the lights out?"
        } else {
            return "測試測試"
        }
    }
}
let a4 = Sunglasses(protectionLevel: 20)
print(a4.visionTest)        //測試測試


//1️⃣0️⃣
struct Swordfighter {
    var name: String
    var introduction: String {
        return "Hello, my name is \(name)."
    }
}
let inigo = Swordfighter(name: "Inigo Montoya")
print(inigo.introduction)       //Hello, my name is Inigo Montoya.
    

//1️⃣1️⃣ ❌ 屬性 要： 而不是= 因為還不知道最後
//struct Race {
//    var distance: Int
//    var runners = 0
//    var description = String {
//        return "This is a \(distance)km race with \(runners) runners."
//    }
//}
struct Race {
    var distance: Int
    var runners = 0
    var description : String {
        return "This is a \(distance)km race with \(runners) runners."
    }
}
let londonMarathon = Race(distance: 42, runners: 40_000)
print(londonMarathon.description)       //This is a 42km race with 40000 runners.

//1️⃣2️⃣
struct Keyboard {
    var isMechanical = false
    var noiseLevel: Int {
        if isMechanical {
            return 11
        } else {
            return 3
        }
    }
}
let majestouch = Keyboard(isMechanical: true)
print(majestouch.noiseLevel)    //11

//: [Next](@next)
