//: [Previous](@previous)

import Foundation

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}


do {
    try checkPassword("password")           //嘗試使用checkPassword函式並帶入參數，結果會走到throw
    print("That password is good!")
} catch {
    print("You can't use that password.")   //當throw丟出會接到
}



//: [Next](@next)
