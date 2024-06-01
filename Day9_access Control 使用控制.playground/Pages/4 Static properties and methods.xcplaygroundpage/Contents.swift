//: [Previous](@previous)

import Foundation

struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")


struct Student2 {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student2.classSize += 1
    }
}
print(Student2.classSize)   //0
let myStudent2 = Student2(name: "周博")
print(Student2.classSize)   //1
let myStudent3 = Student2(name: "周滑")
print(Student2.classSize)   //2

//: [Next](@next)
