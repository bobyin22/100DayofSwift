//: [Previous](@previous)

import Foundation

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}


//呼叫方式1 (Day6都是這樣做)
//特別建立變數 當作 函式參數(閉包)帶入
let drive = { (a1: String) in
    print("I'm going to \(a1) in my car")
}
travel(action: drive)

//呼叫方式2 (Day7開始都這樣寫)
//不特別建立變數 當作 函式參數(閉包)帶入
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//: [Next](@next)
