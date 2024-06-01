import UIKit

//getUsername函式，因為回傳都有字串，所以不是nil
func getUsername() -> String? {
    "Taylor"                        //每次都回傳Taylor
}



let number: Int? = 3

// 定義 square 函式
func square(number: Int) -> Int {
    return number * number          //9
}

// 例子1：正確的使用 Optional Binding
if let number = number {
    print(square(number: number))   //9
}

// 例子2：有語法錯誤的使用 Optional Binding
if let number {
    print(square(number: number))   //9
}


