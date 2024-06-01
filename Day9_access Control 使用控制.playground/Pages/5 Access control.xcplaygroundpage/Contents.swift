//: [Previous](@previous)

import Foundation

//1️⃣ 用let去控制，不能改屬性
struct Person {
    var id: String

    init(id: String) {
        self.id = id
    }
}

let ed = Person(id: "12345")
print(ed.id)                //12345
//ed.id = "54321"           //無法改值，因為是let

//2️⃣ 在類裡面有 private屬性
struct Person2 {
    private var id: String  //實例化的時候不會出現 類.屬性，會被隱藏

    init(id: String) {
        self.id = id
    }
}
let ed2 = Person2(id: "ABCDE")
print(ed2)                 //Person2(id: "ABCDE")


//3️⃣ 在類裡面有 private屬性 與 方法，用方法去拿private屬性資料，不讓外面直接改private屬性
struct Person3 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let ed3 = Person3(id: "一二三四五")
print(ed3.self)         //Person3(id: "一二三四五")
print(ed3.identify())   //My social security number is 一二三四五

//: [Next](@next)
