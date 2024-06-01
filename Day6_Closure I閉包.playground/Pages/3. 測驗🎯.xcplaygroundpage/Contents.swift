//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//Hint: Make sure the value that is returned matches what is expected.

//1️⃣
var flyDrone = { (hasPermit: Bool) -> Bool in
    if hasPermit {
        print("Let's find somewhere safe!")
        return true
    }
    print("That's against the law.")
    return false
}
flyDrone(true)  //Let's find somewhere safe!
                //回傳 true

//2️⃣ 比較好是 { (depth: Int) -> String in
let shovelSnow = { (depth) -> String in
    if depth < 1 {
        return "OK, I can do this..."
    } else {
        return "I need some help!"
    }
}
shovelSnow(3)   //回傳 I need some help!

//3️⃣
let measureSize = { (inches: Int) -> String in
    switch inches {
    case 0...26:
        return "XS"
    case 27...30:
        return "S"
    case 31...34:
        return "M"
    case 35...38:
        return "L"
    default:
        return "XL"
    }
}
measureSize(36) //回傳 L

//4️⃣ ❌ 變數 是個閉包
//func callNumber = { (number: Int) -> String in
//    return "Calling now..."
//}
let callNumber = { (number: Int) -> String in
    return "Calling now..."
}
callNumber(3)   //回傳 Calling now...

//5️⃣ 回傳是String 所以return也是String
//let goSurfing = { (waveHeight: Int) -> Int in
//    if waveHeight < 5 {
//        return "Let's go!"
//    } else if waveHeight < 10 {
//        return "This could be tricky"
//    } else if waveHeight < 20 {
//        return "Only a pro could do that"
//    } else {
//        return "No way!"
//    }
//}
let goSurfing = { (waveHeight: Int) -> String in
    if waveHeight < 5 {
        return "Let's go!"
    } else if waveHeight < 10 {
        return "This could be tricky"
    } else if waveHeight < 20 {
        return "Only a pro could do that"
    } else {
        return "No way!"
    }
}
goSurfing(3)    //Let's go!

//6️⃣
var difficultyRating = { (trick: String) -> Int in
    if trick == "ollie" {
        return 1
    } else if trick == "Yoyo Plant" {
        return 3
    } else if trick == "900" {
        return 5
    } else {
        return 0
    }
}
difficultyRating("ollie")   //回傳1
print(difficultyRating("ollie"))

//7️⃣ ❌ switch 缺少 default
//let convertNumerals = { (numeral: String) -> String in
//    switch numeral {
//    case "I":
//        return "1"
//    case "II":
//        return "2"
//    case "III":
//        return "3"
//    }
//}
let convertNumerals = { (numeral: String) -> String in
    switch numeral {
    case "I":
        return "1"
    case "II":
        return "2"
    case "III":
        return "3"
    default:
        return "一定要default拉"
    }
}
print(convertNumerals("II"))

//8️⃣ ❌ 型別是Int
//var goToWork = { (hours: String) -> Bool in
//    print("I'm going to work")
//    for _ in 1...hours {
//        print("I'm chatting to friends on Facebook.")
//    }
//    print("I'm going home")
//    return true
//}
var goToWork = { (hours: Int) -> Bool in
    print("I'm going to work")
    for _ in 1...hours {
        print("I'm chatting to friends on Facebook.")
    }
    print("I'm going home")
    return true
}
goToWork(3) //I'm chatting to friends on Facebook.
            //I'm chatting to friends on Facebook.
            //I'm chatting to friends on Facebook.
            //I'm going home
//9️⃣
var costToShootMovie = { (location: String) -> Int in
    if location == "UK" {
        return 1_000_000
    } else if location == "US" {
        return 5_000_000
    } else {
        return 500_000
    }
}
costToShootMovie("UK")  //回傳 1_000_000

//1️⃣0️⃣
let writeEssay = { (topic: String) -> String in
    return "Here's an essay on \(topic)."
}
writeEssay("哈哈")    //Here's an essay on 哈哈.

//1️⃣1️⃣ ❌ 不需要 型別名稱
var buyMagazine = { (name: String) -> Int in
    let amount = 10
    print("\(name) costs \(amount)")
    return amount
}
//buyMagazine(name: "Wired")
buyMagazine("Wired")    //Wired costs 10
                        //回傳 10

//1️⃣2️⃣
let bakeBirthdayCake = { (name: String) -> Int in
    print("I've made a cake for \(name); here's the bill.")
    return 50
}
bakeBirthdayCake("十個")  //I've made a cake for 十個; here's the bill.
                         //回傳 50

//: [Next](@next)
