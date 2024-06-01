//: [Previous](@previous)

import Foundation

//This code is valid Swift – true or false?
//Hint: Make sure the parameters passed into the function, and passed into the closure it returns, are correct.

//1️⃣
func makeAdder() -> (Int) -> Void {
    var sum = 0
    return {
        sum += $0
        print("Sum is now \(sum)")
    }
}
let adder = makeAdder()
adder(5)    //Sum is now 5
adder(3)    //Sum is now 8

//2️⃣
func swingBat() -> () -> Void {
    var strikes = 0
    return {
        strikes += 1
        if strikes >= 3 {
            print("You're out!")
        } else {
            print("Strike \(strikes)")
        }
    }
}
let swing = swingBat()  //回傳一個閉包
swing()                 //Strike 1
swing()                 //Strike 2
swing()                 //You're out!

//3️⃣ ❌ 閉包translator捕獲了 translater函式中的參數language，使得閉包內部$0可以訪問到language的值
//func translate(String) -> (String) -> String {
//    return {
//        if language == "French" {
//            if $0 == "Hello" {
//                return "Bonjour"
//            } else {
//                return "\($0) is unknown."
//            }
//        } else {
//            return "Unknown language."
//        }
//    }
//}
func translate(language:String) -> (String) -> String {
    return {
        if language == "French" {
            if $0 == "Hello" {
                return "Bonjour"
            } else {
                return "\($0) is unknown."
            }
        } else {
            return "Unknown language."
        }
    }
}
let translator = translate(language: "French")  //回傳一個閉包 (String)->String
let french = translator("Hello")                //使用閉包，印出Bonjour.

//4️⃣ 韓式有參數名 而且參數要給值
func takeMedicine(name: String) -> () -> Bool {
    var pillsLeft = 30
    return {
        if pillsLeft > 0 {
            pillsLeft -= 1
            print("pillsLeft剩下\(pillsLeft)")
            return true
        } else {
            return false
        }
    }
}

//takeMedicine()
var myConstant = takeMedicine(name: "隨意")
myConstant()    //回傳true
                //pillsLeft剩下29
myConstant()    //回傳true
                //pillsLeft剩下28

//5️⃣ ❌ let number = 0 要改var 才能修改
//func handOutBusinessCards() -> () -> Void {
//    let number = 0
//    return {
//        number += 1
//        print("Number handed out: \(number)")
//    }
//}
func handOutBusinessCards() -> () -> Void {
    var number = 0
    return {
        number += 1
        print("Number handed out: \(number)")
    }
}
let handOut = handOutBusinessCards()
handOut()   //Number handed out: 1
handOut()   //Number handed out: 2

//6️⃣
func storeTwoValues(value1: String, value2: String) -> (String) -> String {
    var previous = value1
    var current = value2
    return { new in
        let removed = previous  //變數 = Hello
        previous = current      //      Hello 被改成 World
        current = new           //                  World 被改成 Value Three
        return "Removed \(removed)"                 //回傳 變數Hello
    }
}
let store = storeTwoValues(value1: "Hello", value2: "World")
let removed = store("Value Three")  //回傳Removed Hello
print(removed)                      //Removed Hello

//7️⃣
func createAgeValidator(strict: Bool) -> (Int) -> Bool {
    return {
        if strict {
            if $0 >= 21 {
                return true
            }
        } else {
            if $0 >= 18 {
                return true
            }
        }
        return false
    }
}
let validator = createAgeValidator(strict: true)     //函式 回傳 閉包
validator(21)   //閉包 回傳 true

//8️⃣ ❌ Doubel Double 才能比較
//func findTallest() -> (String, Double) -> (String) {
//    var tallestName = ""
//    var tallestHeight = 0
//    return {
//        if $1 > tallestHeight {
//            tallestName = $0
//            tallestHeight = $1
//        }
//        return tallestName
//    }
//}
func findTallest() -> (String, Double) -> (String) {
    var tallestName = ""
    var tallestHeight = 0.0
    return {
        if $1 > tallestHeight {     //1.72 > 0.0 走true           //1.68 沒有大於 1.72 走false
            tallestName = $0
            tallestHeight = $1
        }
        return tallestName
    }
}
let tallest = findTallest()
var tallestName = tallest("Hannah", 1.72)   //回傳Hannah
tallestName = tallest("Christina", 1.68)    //回傳Hannah

//9️⃣ ❌ 函式回傳閉包，閉包應該是有參數字串，有回傳字串
//func makeTrivialEncrypter() -> () -> Void {
//    let sekritPassword = "fr0sties"
//    return {
//        return sekritPassword + $0 + sekritPassword
//    }
//}
func makeTrivialEncrypter() -> (String) -> String {
    let sekritPassword = "fr0sties"
    return {
        return sekritPassword + $0 + sekritPassword
    }
}
let encrypter = makeTrivialEncrypter()
encrypter("hello")  //回傳fr0stieshellofr0sties

//1️⃣0️⃣
func visitPlaces() -> (String) -> Void {
    var places = [String: Int]()
    return {
        places[$0, default: 0] += 1
        print("印places變數\(places)")
        let timesVisited = places[$0, default: 0]
        print("印timeVisited變數\(timesVisited)")
        print("Number of times I've visited \($0): \(timesVisited).")
    }
}
let visit = visitPlaces()
visit("London")
visit("New York")
visit("London")

//印places變數["London": 1]
//印timeVisited變數1
//Number of times I've visited London: 1.

//印places變數["New York": 1, "London": 1]
//印timeVisited變數1
//Number of times I've visited New York: 1.

//印places變數["New York": 1, "London": 2]
//印timeVisited變數2
//Number of times I've visited London: 2.

var myDict: [String: Int] = [:]
myDict["數學成績"] = 59
print(myDict)          //myDict["英文成績"] = "85"
myDict["英文成績"] = 85
print(myDict)          //["英文成績": 85, "數學成績": 59]

//1️⃣1️⃣ ❌ 閉包要有參數才能讓print($0) 印出
//func makeRepeater(count: Int) -> () -> Void {
//    return {
//        for _ in 0..<count {
//            print($0)
//        }
//    }
//}
func makeRepeater(count: Int) -> (String) -> Void {
    return {
        for _ in 0..<count {
            print($0)
        }
    }
}
let repeater = makeRepeater(count: 3)
repeater("There's no place like home.") //There's no place like home.
                                        //There's no place like home.
                                        //There's no place like home.
//1️⃣2️⃣
func summonGenie(wishCount: Int) -> (String) -> Void {
    var currentWishes = wishCount
    return {
        if currentWishes > 0 {      //3>0
            currentWishes -= 1      //3-1 = 2
            print("You wished for \($0).")
            print("Wishes left: \(currentWishes)")
        } else {
            print("You're out of wishes.")
        }
    }
}
let genie = summonGenie(wishCount: 3)
genie("a Ferrari")      //You wished for a Ferrari.
                        //Wishes left: 2

//: [Next](@next)
