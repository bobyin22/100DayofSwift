//: [Previous](@previous)

import Foundation

//協議擴展讓我們初始就有可以使用的方法，型別容易遵從這些協議
//Protocol extensions can provide default implementations for our own protocol methods. This makes it easy for types to conform to a protocol

protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()    //My ID is twostraws.

//: [Next](@next)
