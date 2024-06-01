//: [Previous](@previous)

import Foundation

//函式 帶有一個參數，參數是一個閉包(沒有參數 也沒有回傳值)
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

//參數是一個閉包(沒有參數 也沒有回傳值)
let driving = {
    print("I'm driving in my car")
}

travel(action: driving) //"I'm getting ready to go."
                        //"I'm driving in my car"
                        //"I arrived!"


//: [Next](@next)
