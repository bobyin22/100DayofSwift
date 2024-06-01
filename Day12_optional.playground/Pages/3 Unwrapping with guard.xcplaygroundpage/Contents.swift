//: [Previous](@previous)

import Foundation

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

let a1: String? = nil
greet(a1)           //You didn't provide a name!

let a2: String? = "安安"
greet(a2)           //Hello, 安安!

//: [Next](@next)
