//: [Previous](@previous)

import Foundation

//閉包沒有回傳值
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}


//閉包有回傳值
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)  //I'm going to London in my car



//: [Next](@next)
