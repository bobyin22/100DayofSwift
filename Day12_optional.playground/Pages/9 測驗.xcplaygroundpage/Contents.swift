//: [Previous](@previous)

import Foundation

//1️⃣
struct Password {
    var text: String
    init?(input: String) {
        if input.count < 6 {
            print("Password too short.")
            return nil
        }
        text = input
    }
}
let password = Password(input: "hell0")
print(password) //nil

//2️⃣ ❌ 強制轉型Bool後，有成功，不是nil
var hasForcePowers = "true"
let convertedHasForcePowers = Bool(hasForcePowers)
print(convertedHasForcePowers)  //Optional(true)

//3️⃣ ❌ 出來不是nil，因為前面符合條件字首是http
struct Website {
    var url: String
    init?(url: String) {
        if url.hasPrefix("http") {
            self.url = url
        } else {
            print("Invalid website URL.")
            return nil
        }
    }
}
let site = Website(url: "https://www.hackingwithswift.com")
print(site?.url)    //Optional("https://www.hackingwithswift.com")

//4️⃣ ❌ 強制轉型Double後，有成功，不是nil
var highestJump = "2.45"
let convertedHighestJump = Double(highestJump)
print(convertedHighestJump)     //Optional(2.45)

//5️⃣ 初始化後無論怎樣都會是nil
struct DEFCONRating {
    var number: Int
    init?(number: Int) {
        guard number > 0 else { return nil }
        guard number <= 5 else { return nil }
        self.number = number
    }
}
let defcon = DEFCONRating(number: 6)
print(defcon)                           //nil

//6️⃣ 因為F是大寫，強制轉型不成功，應該是"fasle" -> false
var enabled = "False"
let convertedEnabled = Bool(enabled)
print(convertedEnabled) //nil

//7️⃣ ❌ 因為humpCaount 小於2 所以humps = humpCount ，不是nil
class Camel {
    var humps: Int
    init?(humpCount: Int) {
        guard humpCount <= 2 else { return nil }
        humps = humpCount
    }
}
let horse = Camel(humpCount: 0)
print(horse?.humps) //Optional(0)

//8️⃣ 轉型失敗，英文字不能轉Int
var rating = "5 stars"
let convertedRating = Int(rating)
print(convertedRating)  //nil

//9️⃣ 轉型失敗，逗點不能轉Double
var powerUsage = "0,1"
let convertedPowerUsage = Double(powerUsage)
print(convertedPowerUsage)  //nil

//1️⃣0️⃣ ❌ 轉型成功，所以不是nil
var examResult = "100"
let convertedExamResult = Int(examResult)

//1️⃣1️⃣
class Hotel {
    var starRating: Int
    init?(rating: Int) {
        if rating <= 1 {
            print("This probably has bed bugs.")
            return nil
        }
        self.starRating = rating
    }
}
let hotelElan = Hotel(rating: 1)
print(hotelElan?.starRating)        //nil

//1️⃣2️⃣ 初始化成功，字頭是en 所以，初始化不是nil
struct Language {
    var code: String
    init?(code: String) {
        if code.hasPrefix("en-") {
            self.code = code
        } else {
            print("Sorry, only English variants are supported." )
            return nil
        }
    }
}
let language = Language(code: "en-GB")
print(language?.code)       //Optional("en-GB")

//: [Next](@next)
