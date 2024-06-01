//: [Previous](@previous)

import Foundation

extension Int {
    func squared() -> Int {
        print("答案是\(self * self)")
        return self * self
    }
    
    //⭐️延伸的屬性，只能是computed property
    var 是偶數嗎: Bool {
        print("答案是\(self % 2 == 0)")
        return self % 2 == 0
    }
}
let number = 8
number.squared()    //答案是64
number.是偶數嗎       //答案是true

//: [Next](@next)
