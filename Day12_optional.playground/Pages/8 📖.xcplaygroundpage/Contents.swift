//: [Previous](@previous)

import Foundation

//如果只關注是否success，可以用if let 變數 = try? 函式()
//如果函數成功執行，則返回結果；如果函數引發錯誤，則返回 nil

//If you want to run a function and care only that it succeeds or fails – you don’t need to distinguish between the various reasons why it might fail – then using optional try is a great fit

enum PasswordError: Error {
    case obvious
}

// 如果參數值是password代表不夠好，會丟出錯誤，然後被catch印出
// 如果密碼不等於password 回傳true
func runRiskyFunction(_ password: String) throws -> Bool? {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

//👵🏻
do {
    let result = try runRiskyFunction("超級密碼")
    print(result)                   //Optional(true)
} catch {
    // it failed!
}

//✅
if let result = try? runRiskyFunction("超級密碼") {   //如果函數成功執行，則返回結果；如果函數引發錯誤，則返回 nil
    print(result)                                   //true
} else {
    print(false)
}




 


//: [Next](@next)
