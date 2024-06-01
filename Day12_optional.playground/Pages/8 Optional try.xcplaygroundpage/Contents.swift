//: [Previous](@previous)

import Foundation

enum PasswordError: Error {
    case obvious
}

// 如果參數值是password代表不夠好，會丟出錯誤，然後被catch印出
// 如果密碼不等於password 回傳true
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

//try! 確定一定不會失敗
try! checkPassword("sekrit")
print("OK!")

//try? 有可能失敗所以用if let
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")                          //D'oh.             密碼等於password 回傳Error
}

//try? 有可能失敗所以用if let
if let result = try? checkPassword("超級密碼") {
    print("Result was \(result)")           //Result was true    密碼不等於password 回傳true
} else {
    print("D'oh.")
}

//傳統do catch方式
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")   //You can't use that password. 密碼等於password 回傳Error
}

//傳統do catch方式
do {
    try checkPassword("超級密碼")
    print("That password is good!")         //That password is good! 密碼不等於password 回傳true
} catch {
    print("You can't use that password.")
}



//: [Next](@next)
