//: [Previous](@previous)

import Foundation

//✅ 非常確定的就直接給他!解包
let url = URL(string: "https://www.apple.com")  //let url = URL(string: "https://www.apple.com")!
print(url)  //Optional(https://www.apple.com)

print(url!) //https://www.apple.com



let randomNumber = (1...10).randomElement() //let randomNumber = (1...10).randomElement()!
print(randomNumber)     //Optional(8)
print(randomNumber!)    //8


//❌ 不能保證每次items出來一定有東西
//var items = [Int]()
//
//for i in 1...10 {
//    if isLuckyNumber(i) {
//        items.append(i)
//    }
//}
//
//let randomNumber1 = items.randomElement()!

//✅ 可以保證每次items隨機出來都有東西
var items = [Int]()

// 函式用來判斷數字是否為幸運數字
func isLuckyNumber(_ number: Int) -> Bool {
    // 在這裡添加檢查是否為幸運數字的邏輯
    // 例如，如果幸運數字的條件是能被 3 整除的數字，則可以寫成 return number % 3 == 0
    // 如果符合幸運數字的條件，返回 true，否則返回 false
    // 這裡只是一個示例，你需要根據你的需求修改此函式的內容
    return number % 2 == 0
}
// 檢查 1 到 10 是否為幸運數字
for i in 1...10 {
    if isLuckyNumber(i) {
        items.append(i)     //[2, 4, 6, 8, 10]
    }
}

print(items.randomElement())    //Optional(2)

// 如果有幸運數字，從中隨機選擇一個
if let randomNumber1 = items.randomElement() {
    print("Random lucky number: \(randomNumber1)")  //Random lucky number: 10"
} else {
    print("No lucky numbers found")
}



//: [Next](@next)
