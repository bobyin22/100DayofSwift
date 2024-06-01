//: [Previous](@previous)

import Foundation

var name: String? = nil
name?.count


//檢查 name 是否包含一個非空值
    //如果 name 不是空 印出字的count
    //如果 name 是空   印出Miss name
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")  //Missing name.
}

//: [Next](@next)
