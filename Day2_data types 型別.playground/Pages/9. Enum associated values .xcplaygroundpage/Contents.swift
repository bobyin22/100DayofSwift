//: [Previous](@previous)

import Foundation

//enum Activity {
//    case bored
//    case running
//    case talking
//    case singing
//}

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")
print(talking)  //talking(topic: "football")

//: [Next](@next)
