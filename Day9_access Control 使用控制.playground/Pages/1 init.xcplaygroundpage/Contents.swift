//: [Previous](@previous)

import Foundation

struct User {
    var username: String
}

var user = User(username: "twostraws")


struct User2 {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user2 = User2()             //因為init已給屬性username值，所以實例化時候不用給值
user.username = "twostraws"

//: [Next](@next)
