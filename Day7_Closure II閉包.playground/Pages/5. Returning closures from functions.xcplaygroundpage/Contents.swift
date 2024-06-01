//: [Previous](@previous)

import Foundation

//函式沒有參數 回傳閉包
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()   //呼叫函式，把函式存到變數中，函式有回傳閉包
result("London")        //呼叫閉包，閉包參數1是字串

                        //I'm going to London


let result2 = travel()("London")
                        //I'm going to London




//: [Next](@next)
