//: [Previous](@previous)

import Foundation

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

// 每次建立Person實例 都會走FamilyTree的init
struct Person {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}
var ed = Person(name: "Ed")        //Creating family tree!

// 每次建立Person實例 不走FamilyTree的init，除非需要lazy
struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}
var bob = Person2(name: "Bob")      //
bob.familyTree                      //此時才會走到Creating family tree!



//: [Next](@next)
