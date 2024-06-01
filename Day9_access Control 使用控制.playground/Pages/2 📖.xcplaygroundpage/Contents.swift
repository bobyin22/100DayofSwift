//: [Previous](@previous)

import Foundation

struct Student {
    var name: String
    var bestFriend: String

    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class…")
        self.name = name
        self.bestFriend = bestFriend
    }
}
let myStudent = Student(name: "楊國姓1", bestFriend: "楊騰峰1")
print(myStudent.name, myStudent.bestFriend)
//Enrolling 楊國姓1 in class…
//楊國姓1 楊騰峰1


//❌ 不用前綴(prefix)，笨笨的
struct Student2 {
    var name: String
    var bestFriend: String

    init(name studentName: String, bestFriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class…")
        name = studentName
        bestFriend = studentBestFriend
    }
}
let myStudent2 = Student2(name: "楊國姓2", bestFriend: "楊騰峰2")
print(myStudent2.name, myStudent2.bestFriend)
//Enrolling 楊國姓2 in class…
//楊國姓2 楊騰峰2


//: [Next](@next)
