//: [Previous](@previous)

import Foundation

// Extension缺點是，只能影響單一類型，例如Extension Int，只對Int去做改變
// Protocol Extension，因為Array、Set都遵從Collection協議，所以extension 協議，可以讓他們都受益

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])


extension Collection {  //Collection是Protocol
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

//: [Next](@next)
