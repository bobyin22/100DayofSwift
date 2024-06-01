//: [Previous](@previous)

import Foundation

//製作一個，如果初始化失敗會成為nil的，init

struct Employee {
    var username: String
    var password: String

    init?(username: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard password.lowercased() != "password" else { return nil }

        self.username = username
        self.password = password
    }
}

let tim = Employee(username: "TimC", password: "app1e")
print(tim)                                                              //tim變數 = nil
let craig = Employee(username: "CraigF", password: "ha1rf0rce0ne")
print(craig?.username, craig?.password)         //Optional("CraigF") Optional("ha1rf0rce0ne")

//: [Next](@next)
