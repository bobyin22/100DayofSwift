//: [Previous](@previous)

import Foundation


//1️⃣
var flyDrone = { (hasPermit: Bool) -> Bool in
    if hasPermit {
        print("Let's find somewhere safe!")
        return true
    }
    print("That's against the law.")
    return false
}

flyDrone(false) //That's against the law. 並且閉包回傳false


//2️⃣ ❌ 參數depth必須要有型別
//let shovelSnow = { (depth) -> String in
//    if depth < 1 {
//        return "OK, I can do this..."
//    } else {
//        return "I need some help!"
//    }
//}

let shovelSnow = { (depth:Double) -> String in
    if depth < 1 {
        return "OK, I can do this..."
    } else {
        return "I need some help!"
    }
}

shovelSnow(0.5) //回傳字串 "OK, I can do this..."


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
measureSize(36) //回傳 "L"


//4️⃣ ❌ 函式不能向閉包一樣把參數回傳值寫在大括號後面
//func callNumber = { (number: Int) -> String in
//    return "Calling now..."
//}


var callNumber = { (number: Int) -> String in
    return "Calling now...\(number)"
}

callNumber(3)   //回傳"Calling now...3"



//5️⃣ ❌ 回傳值要字串
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
        return "Only a pro could do that"   //走到這
    } else {
        return "No way!"
    }
}

goSurfing(15)   //回傳 "Only a pro could do that"


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
print(difficultyRating("ollie"))    //回傳1

//7️⃣ ❌ 要有default case
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
        return  "4"
    }
}

print(convertNumerals("II"))    //回傳 2



//8️⃣ ❌ 參數housrs型別要是Int
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

costToShootMovie("UK")      //回傳1,000,000

//1️⃣0️⃣
let writeEssay = { (topic: String) -> String in
    return "Here's an essay on \(topic)."
}

writeEssay("如何用英文寫好作文")     //回傳 "Here's an essay on 如何用英文寫好作文."

//1️⃣1️⃣ ❌ 呼叫閉包的時候不能有參數，直接給值
var buyMagazine = { (name: String) -> Int in
    let amount = 10
    print("\(name) costs \(amount)")
    return amount
}
//buyMagazine(name: "Wired")
buyMagazine("Wired")              //回傳 Wired costs 10

//1️⃣2️⃣
let bakeBirthdayCake = { (name: String) -> Int in
    print("I've made a cake for \(name); here's the bill.")
    return 50
}

bakeBirthdayCake("布朗尼")   //"I've made a cake for 布朗尼; here's the bill."
                            //回傳50

//: [Next](@next)
