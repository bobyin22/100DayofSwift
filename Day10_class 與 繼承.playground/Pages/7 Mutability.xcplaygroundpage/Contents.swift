//: [Previous](@previous)

import Foundation

//⭐️ struct實例是let，即使strcut內屬性是var，也改不動
struct Singer0 {
    var name = "Taylor Swift"
}

//let taylor = Singer0()
//taylor.name = "Ed Sheeran"
//print(taylor.name)
var taylor0 = Singer0()
taylor0.name = "Ed Sheeran"
print(taylor0.name)              //Ed Sheeran


//⭐️ class實例是let，即使class內屬性是var，也改的動
class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)              //Ed Sheeran

//: [Next](@next)
