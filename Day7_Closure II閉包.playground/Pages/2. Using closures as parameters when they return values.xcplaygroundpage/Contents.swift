//: [Previous](@previous)

import Foundation

//參數1 是閉包，(閉包有字串參數，閉包回傳字串)
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//傳統呼叫方法 (還要建立變數 是一個閉包然後放入 當參數用)
let drive = { (a1: String) -> String in
    return "I'm going to \(a1) in my car"
}
travel(action: drive)                           //I'm getting ready to go.
                                                //I'm going to London in my car
                                                //I arrived!


//正確閉包寫法
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"    //I'm getting ready to go.
}                                               //I'm going to London in my car
                                                //I arrived!



//: [Next](@next)
