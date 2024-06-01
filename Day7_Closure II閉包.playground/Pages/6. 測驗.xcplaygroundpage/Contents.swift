//: [Previous](@previous)

import Foundation

//1️⃣
func makeAdder() -> (Int) -> Void {
    var sum = 0
    return {
        sum += $0
        print("Sum is now \(sum)")
    }
}
let adder = makeAdder()
adder(5)                    //Sum is now 5
adder(3)                    //Sum is now 8

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
let swing = swingBat()
swing()                 //Strike 1
swing()                 //Strike 2
swing()                 //You're out!


//3️⃣ ❌ 錯誤，函式參數1要參數名
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
func translate(language: String) -> (String) -> String {
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
let translator = translate(language: "French")  //呼叫函式，回傳閉包
let french = translator("Hello")                //呼叫閉包，回傳字串Bonjour

//4️⃣
//func takeMedicine(name: String) -> () -> Bool {
//    var pillsLeft = 30
//    return {
//        if pillsLeft > 0 {
//            pillsLeft -= 1
//            return true
//        } else {
//            return false
//        }
//    }
//}
func takeMedicine() -> () -> Bool {
    var pillsLeft = 30
    return {
        if pillsLeft > 0 {
            pillsLeft -= 1
            return true
        } else {
            return false
        }
    }
}

takeMedicine()  //回傳閉包

//5️⃣ ❌ 捕獲因為會改值，不能用let當屬性
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
handOut()           //Number handed out: 1
handOut()           //Number handed out: 2

//6️⃣
func storeTwoValues(value1: String, value2: String) -> (String) -> String {
    var previous = value1
    var current = value2
    return { new in
        let removed = previous
        previous = current
        current = new
        return "Removed \(removed)"
    }
}
let store = storeTwoValues(value1: "Hello", value2: "World")
let removed = store("Value Three")
print(removed)

//7️⃣
func storeTwoValues2(value1: String, value2: String) -> (String) -> String {
    var previous = value1
    var current = value2
    return { new in
        let removed = previous  // 常數removed = Hello
        previous = current      // 變數previous = World
        current = new           // 變數current = Value Three
        return "Removed \(removed)" //回傳 "Removed Hello"
    }
}
let store2 = storeTwoValues2(value1: "Hello", value2: "World")
let removed2 = store2("Value Three")
print(removed2)                         //Removed Hello
                                        //Removed Hello

//8️⃣
func createAgeValidator(strict: Bool) -> (Int) -> Bool {
    return {
        if strict {
            if $0 >= 21 {
                return true //走到這
            }
        } else {
            if $0 >= 18 {
                return true
            }
        }
        return false
    }
}
let validator = createAgeValidator(strict: true)
validator(21)       //回傳true



//9️⃣ ❌ Double > Int 不能這樣寫
//func findTallest() -> (String, Double) -> (String) {
//    var tallestName = ""
//    var tallestHeight = 0
//    return {
//        if $1 > tallestHeight {     //Double > Int 不能這樣寫
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
        if $1 > tallestHeight {
            tallestName = $0        // 變數tallestName = Hanna
            tallestHeight = $1      // 變數tallestHeight = 1.72
        }
        return tallestName          //  回傳Hanna
    }
}
let tallest = findTallest()
var tallestName = tallest("Hannah", 1.72)   //回傳 Hanna
tallestName = tallest("Christina", 1.68)    //回傳 Hanna
tallestName = tallest("Bob", 1.99)          //回傳 Bob

//1️⃣0️⃣ 🤷‍♂️ 不太懂
func visitPlaces() -> (String) -> Void {
    var places = [String: Int]()
    return {
        places[$0, default: 0] += 1     //如果 places 字典中已經有該地點的記錄，則將其參觀次數加 1；如果沒有該地點的記錄，則預設參觀次數為 0。
        let timesVisited = places[$0, default: 0]   //參數1，給預設值0
        print("Number of times I've visited \($0): \(timesVisited).")
    }
}
let visit = visitPlaces()
visit("London")
visit("New York")
visit("London")


//備註Dictionary有default方法
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]    //Chocolate
favoriteIceCream["Charlotte"] //nil
favoriteIceCream["Charlotte", default: "Unknown"]   //Unkonw



//1️⃣1️⃣ ❌ 函式回傳的閉包有參數(字串)
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
repeater("There's no place like home.")     //There's no place like home.
                                            //There's no place like home.
                                            //There's no place like home.

//1️⃣2️⃣
func summonGenie(wishCount: Int) -> (String) -> Void {
    var currentWishes = wishCount
    return {
        if currentWishes > 0 {
            currentWishes -= 1
            print("You wished for \($0).")
            print("Wishes left: \(currentWishes)")
        } else {
            print("You're out of wishes.")
        }
    }
}
let genie = summonGenie(wishCount: 3)       //You wished for a Ferrari.
genie("a Ferrari")                          //Wishes left: 2

genie("a Ferrari")                          //You wished for a Ferrari.
                                            //Wishes left: 1

genie("a Ferrari")                          //You wished for a Ferrari.
                                            //Wishes left: 0

genie("a Ferrari")                          //You're out of wishes.

//: [Next](@next)
