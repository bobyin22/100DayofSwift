//: [Previous](@previous)

import Foundation
//This code is valid Swift – true or false?
//Hint: Computed properties must always return a value.

//1️⃣ report型別要是String
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

//2️⃣ population 型別要是Int
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
//3️⃣ 計算屬性不能是let
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
print(malbec.price) //22

//5️⃣ ⭐️
struct Medicine {
    var amount: Int
    var frequency: Int
    var dosage: String {
        return "Take \(amount) pills \(frequency) times a day."
    }
}
let a1 = Medicine(amount: 99, frequency: 3)
print(a1.dosage)   //Take 99 pills 3 times a day.

//8️⃣ 要寫return
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
print(luna.rating)

//9️⃣ if condition 要寫完
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
            return "走投無路了"
        }
    }
}
//1️⃣0️⃣
struct Swordfighter {
    var name: String
    var introduction: String {
        return "Hello, my name is \(name)."
    }
}
let inigo = Swordfighter(name: "Inigo Montoya")

//1️⃣1️⃣ ⭐️ 給description屬性 型別
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
    var description: String {
        return "This is a \(distance)km race with \(runners) runners."
    }
}
let londonMarathon = Race(distance: 42, runners: 40_000)
print(londonMarathon.description)   //This is a 42km race with 40000 runners.
//1️⃣2️⃣

//: [Next](@next)
