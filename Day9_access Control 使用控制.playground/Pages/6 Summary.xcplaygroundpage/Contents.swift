//: [Previous](@previous)

import Foundation

//1 建立自訂義的stuct 並且有屬性 與 方法
struct Sport {
    var name: String
}

//2 可以有store properties 或 computed properties
class Sport1 {
    var name: String
    var isOlympicsSport: Bool
    
    init(name: String, isOlympicsSport: Bool) {
        self.name = name
        self.isOlympicsSport = isOlympicsSport
    }
    
    var olympicStatus: String { //是stored properties
        if isOlympicsSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

//3 mutating 可以改屬性
struct App {
    var name = "123"
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var app = App()
print(app)  //App(name: "123")
app.makeAnonymous()
print(app)  //App(name: "Anonymous")


//4 struct swift會預設給memberwise init，如果自訂init要給屬性值
struct User2 {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user2 = User2()             //因為init已給屬性username值，所以實例化時候不用給值
user2.username = "twostraws"


//5 使用self
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//6 lazy 使只有要使用時才會產生
// 每次建立Person實例 不走FamilyTree的init，除非需要lazy
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}
var bob = Person2(name: "Bob")      //
bob.familyTree                      //此時才會走到Creating family tree!


//7 static
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


//8 access control
struct Person3 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let ed3 = Person3(id: "一二三四五")
print(ed3.self)         //Person3(id: "一二三四五")
print(ed3.identify())   //My social security number is 一二三四五


//: [Next](@next)
