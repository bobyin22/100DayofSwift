//: [Previous](@previous)

import Foundation

//蘋果內建的 隨機函式
print(Int.random(in: 1...10))


//自行設計 隨機函式
func getRandomNumber()-> Int {
    Int.random(in: 1...10)
}

let a1 = getRandomNumber()      //呼叫函式 回傳Int 賦值給變數a1
print(a1)                       //印出Int


//-----------------

func makeRandomGenerator() -> () -> Int {
    let function = { Int.random(in: 1...10) }
    return function
}

let a2 = makeRandomGenerator()  //回傳函式 回傳閉包 賦值給變數a2
let random2 = a2()              //呼叫閉包 回傳Int 賦值給變數random2
print(random2)                  //印出Int

                                

//: [Next](@next)
