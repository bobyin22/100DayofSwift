//: [Previous](@previous)

import Foundation

// 定義一個函式 參數是一個整數 回傳是一個型別為 () -> Int 的閉包
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    // 用來儲存計數總數的變數
    var runningTotal = 0

    // 巢狀函式 簡單的將參數的數字加進計數並返回
    // runningTotal 和 amount 都被捕獲了
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    // 返回捕獲變數參考的巢狀函式
    return incrementer
}


let incrementByTen = makeIncrementer(forIncrement: 10)
// 呼叫多次 可以觀察到每次返回值都是累加上去
incrementByTen() // 10
incrementByTen() // 20
incrementByTen() // 30


let incrementBySix = makeIncrementer(forIncrement: 6)
incrementBySix() // 6
// 第一個常數仍然是對它自己捕獲的變數做操作
incrementByTen() // 40

//: [Next](@next)
