//: [Previous](@previous)

import Foundation

let names = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
print(names["Bob"])         //nil
print(names["Vincent"])     //Optional("van Gogh")

let surnameLetter = names["Vincent"]?.first?.uppercased()
print(surnameLetter)    //Optional("V")
let surnameLetter1 = names["Bob"]?.first?.uppercased() ?? "不存在這個key值"
print(surnameLetter1)   //不存在這個key值
//: [Next](@next)
