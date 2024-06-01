//: [Previous](@previous)

import Foundation

//let numbers = [1, 2, 3, 4, 5]
//let random = numbers.shuffled()


let numbers1 = [1, 2, 3, 4, 5]
var random1 = numbers1.shuffled()   //先洗牌

//去比對是不是陣列內是不是一樣順序
while random1 == numbers1 {
    random1 = numbers1.shuffled()
}



let numbers2 = [1, 2, 3, 4, 5]
var random2: [Int]  //不先洗牌，只知道陣列內是數字
    
//先洗牌一次，然後去比對是不是陣列內是不是一樣順序
repeat {
    random2 = numbers2.shuffled()
} while random2 == numbers2

//: [Next](@next)
