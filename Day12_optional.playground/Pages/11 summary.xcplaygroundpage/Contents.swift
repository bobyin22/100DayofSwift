//: [Previous](@previous)

import Foundation

//1️⃣ optional讓我們可以給值nil
var age: Int? = nil
age = 38

//2️⃣ if let 或 guard let 才能解包
var name: String? = "Bob"
print(name)                       //Optional("Bob")
if let unwarpped = name {
    print("\(unwarpped) 解包成功")  //Bob 解包成功
} else {
    print("name 解包失敗")
}

//3️⃣ 解包nil，會閃退
let str = "5"       //不能寫 let str = "A"，然後去Int(str)!
let num = Int(str)!

//4️⃣ implicity unwrapped 沒有safety check
var magicNum: Int? = 100
print(magicNum)         //Optional(100)
var age1: Int! = nil
print(age1)             //nil
age1 = 38


//❌
var username: String! = "John"
username = nil
print(username) // 這裡將會導致崩潰，因為 username 已經被釋放為 nil


//5️⃣ nil coalescing 解包optional 可以提供default value，如果是nil的話
//let user = username(for: 15) ?? "Anonymous"

//6️⃣ optional chaining 讓我們可以對optional做行動，但是如果是nil 後面的事情就不做了
var names: String? = "Chou"
let beatle = names?.first?.uppercased()


//7️⃣ try? 可以 throwing 函式 optional return 值
//   try! 可以 如果throwing error 會閃退
//if let result = try? checkPassword("sekrit") {
//    print("Result was \(result)")
//} else {
//    print("D' oh.")
//}

//8️⃣ init可以設計是optional
/*
init?(id: String) {
    if id.count == 9 {
        self.id = id
    } else {
        return nil
    }
 }
 */


//9️⃣ typecasting 轉型
/*
 for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
 }
 */

//: [Next](@next)
