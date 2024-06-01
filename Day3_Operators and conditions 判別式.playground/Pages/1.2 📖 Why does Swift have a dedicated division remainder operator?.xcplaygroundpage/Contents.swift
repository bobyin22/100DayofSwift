//: [Previous](@previous)

import Foundation

//實際是66.4，然後會四捨五入，最後得到66
let weeks1 = 465 / 7
print("There are \(weeks1) weeks until the event.")

//一堆小數點，得到66.42857142857143
let weeks2: Double = 465 / 7
print("There are \(weeks2) weeks until the event.")

//
let weeks3 = 465 / 7
let days = 465 % 7
print("There are \(weeks3) weeks and \(days) days until the event.")


let number = 465
let isMultiple = number.isMultiple(of: 7)   //得到布林值 是不是number倍數

//: [Next](@next)
