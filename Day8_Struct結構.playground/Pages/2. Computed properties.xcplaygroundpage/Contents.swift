//: [Previous](@previous)

import Foundation

struct Sport0 {
    var name: String    //這個是store property
}

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {     //這個是computed property
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)        //Chessboxing is not an Olympic sport


//: [Next](@next)
