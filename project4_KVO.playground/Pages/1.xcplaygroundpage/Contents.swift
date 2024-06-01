//: [Previous](@previous)

import Foundation
import UIKit
import WebKit

@objc class Person: NSObject {
    @objc dynamic var name = "Taylor Swift"
}

let taylor = Person()

//\Person.name 是 key path refers ， Person類的name屬性
let observation = taylor.observe(\Person.name, options: .new) { person, change in
    print("I'm now called \(person.name)")
}

taylor.name = "Justin Bieber"


/*
 KVO 蘋果文件：https://developer.apple.com/documentation/swift/using-key-value-observing-in-swift
 */
//: [Next](@next)
