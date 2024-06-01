//: [Previous](@previous)

import Foundation

//1️⃣
extension Double {
    var isNegative: Bool {
        return self < 0
    }
}
var double = Double()
double = -2.0
double.isNegative   //true

//2️⃣ ❌ computed property 要有屬性
//extension Int {
//    var isEven {
//        return self % 2 == 0
//    }
//}
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
var int = Int()
int = 4
int.isEven     //true

//3️⃣ ❌ 對於既有的方法，要覆寫就要mutating
//extension String {
//    func append(_ other: String) {
//        self += other
//    }
//}
extension String {
    mutating func append(_ other: String) {
        self += other
    }
}
var string = String()
string = "對這個世界如果你有太多的抱怨跌倒了就不敢繼續往前走，"
string.append("為什麼人要這麼的脆弱墮落？")  //對這個世界如果你有太多的抱怨跌倒了就不敢繼續往前走，為什麼人要這麼的脆弱墮落？


//4️⃣ ❌ 沒有 func 關鍵字
//extension Int {
//    times(_ action: () -> Void) {
//        for _ in 0..<self {
//            action()
//        }
//    }
//}
extension Int {
    func times(_ action: () -> Void) {
        for _ in 0..<self {
            action()
        }
    }
}
var myTime = Int()
myTime = 3
myTime.times({ () -> Void in
    print("你好")                     //你好
})                                   //你好
                                     //你好
//myTime.times {
//    print("Hi")     //Hi
//}                   //Hi
//                    //Hi

//5️⃣ ❌ ext 要寫完整 extension
//ext Array {
//    func summarize() {
//        print("The array has \(count) items. They are:")
//        for item in self {
//            print(item)
//        }
//    }
//}
extension Array {
    func summarize() {
       print("The array has \(count) items. They are:")
       for item in self {
           print(item)
       }
   }
}
var array: [String] = []
array = ["你", "我", "他"]
array.summarize()           //The array has 3 items. They are:
                            //你
                            //我
                            //他

//6️⃣ ❌ computed property 要回傳
//extension Int {
//    var isAnswerToLifeUniverseAndEverything: Bool {
//        let target = 42
//        self == target
//    }
//}
extension Int {
    var isAnswerToLifeUniverseAndEverything: Bool {
        let target = 42
        if self == target {
            return true
        } else {
            return false
        }
    }
}
let myInt = 5
myInt.isAnswerToLifeUniverseAndEverything   //false

//7️⃣ ❌ if判斷式要 == 或 !=
//extension Bool {
//    func toggled() -> Bool {
//        if self = true {
//            return false
//        } else {
//            return true
//        }
//    }
//}
extension Bool {
    func toggled() -> Bool {
        if self == true {
            return false
        } else {
            return true
        }
    }
}
let myBool = false
myBool.toggled()        //true

//8️⃣
extension Int {
    func cubed() -> Int {
        return self * self * self
    }
}
let myMathScore = 10
myMathScore.cubed() //1000

//9️⃣
extension Int {
    func clamped(min: Int, max: Int) -> Int {
        if (self > max) {
            return max
        } else if (self < min) {
            return min
        }
        return self
    }
}
let myClamped = 3
myClamped.clamped(min: 0, max: 1)  //回傳1

//1️⃣0️⃣
extension String {
    var isLong: Bool {
        return count > 25
    }
}
let isNBAPlayerHeigh = "是的"
isNBAPlayerHeigh.isLong         //false

//1️⃣1️⃣
extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
}
let 有沒有前綴 = "聽說要加前綴"
有沒有前綴.withPrefix("func")    //回傳 func聽說要加前綴

//1️⃣2️⃣
extension String {
    func isUppercased() -> Bool {
        return self == self.uppercased()
    }
}
let 字串 = "大小通吃"
字串.isUppercased()   //true

//: [Next](@next)
