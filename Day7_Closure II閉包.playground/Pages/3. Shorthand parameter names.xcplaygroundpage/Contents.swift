//: [Previous](@previous)

import Foundation

//⭐️經典題 函式 參數1是閉包(閉包參數1是字串，閉包回傳字串)，最後的參數是閉包所以也是trailing clousre
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//呼叫函式1
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"        //I'm getting ready to go.
}                                                   //I'm going to London in my car
                                                    //I arrived!

//呼叫函式2 省略參數1 回傳型別
travel { place -> String in
    return "I'm going to \(place) in my car"
}

//呼叫函式3 省略參數1 回傳型別 ✝️ 省略回傳型別
travel { place in
    return "I'm going to \(place) in my car"
}

//呼叫函式4 省略參數1 回傳型別 ✝️ 省略回傳型別 ✝️ 省略return字
travel { place in
    "I'm going to \(place) in my car"
}

//呼叫函式5 省略參數1 回傳型別 ✝️ 省略回傳型別 ✝️ 省略return字 ✝️ 省略參數1 參數名 ✝️ 省略in
travel {
    "I'm going to \($0) in my car"
}

//: [Next](@next)
