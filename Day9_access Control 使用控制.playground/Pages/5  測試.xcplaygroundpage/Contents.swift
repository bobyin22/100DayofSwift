//: [Previous](@previous)

import Foundation

//1️⃣ ❌ private 屬性, Swift 不能 generate its memberwise initializer
//struct FacebookUser {
//    private var privatePosts: [String]
//    public var publicPosts: [String]
//}
struct FacebookUser {
    private var privatePosts: [String]
    public var publicPosts: [String]
    
    // 提供自定義的初始化器
    init(privatePosts: [String], publicPosts: [String]) {
        self.privatePosts = privatePosts
        self.publicPosts = publicPosts
    }
}

// 創建一個 FacebookUser 實例，並傳遞初始值
let user = FacebookUser(privatePosts: ["Private Post 1", "Private Post 2"], publicPosts: ["Public Post 1", "Public Post 2"])
print(user) //FacebookUser(privatePosts: ["Private Post 1", "Private Post 2"], publicPosts: ["Public Post 1", "Public Post 2"])



//2️⃣ ❌ init要給的是Int 不是String
struct Order {
    private var id: Int
    init(id: Int) {
        self.id = id
    }
}
//let order = Order(id: "1")
let order = Order(id: 1)
print(order)        //Order(id: 1)

//3️⃣
struct Person {
    private var socialSecurityNumber: String
    init(ssn: String) {
        socialSecurityNumber = ssn
    }
}
let sarah = Person(ssn: "555-55-5555")
print(sarah)        //Person(socialSecurityNumber: "555-55-5555")


//4️⃣
struct Contributor {
    private var name = "Anonymous"
}
let paul = Contributor()
print(paul)           //Contributor(name: "Anonymous")


//5️⃣ ❌ codeName 要是String ，init給錯給Int
struct SecretAgent {
    private var actualName: String
    public var codeName: String
    init(name: String, codeName: String) {
        self.actualName = name
        self.codeName = codeName
    }
}
//let bond = SecretAgent(name: "James Bond", codeName: 007)
let bond = SecretAgent(name: "James Bond", codeName: "007")
print(bond) //SecretAgent(actualName: "James Bond", codeName: "007")


//6️⃣ ❌ struct裡面有private屬性就一定要init，除非struct屬性只有一個且是private
//struct Doctor {
//    var name: String
//    var location: String
//    private var currentPatient = "No one"
//}
//let drJones = Doctor(name: "Esther Jones", location: "Bristol")
struct Doctor {
    var name: String
    var location: String
    private var currentPatient = "No one"
    
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol")
print(drJones)  //Doctor(name: "Esther Jones", location: "Bristol", currentPatient: "No one")


//舉例
struct Doctor1 {
    var name: String
}
print(Doctor1(name: "張醫生"))     //Doctor1(name: "張醫生")
      
struct Doctor2 {
    private var name = "李醫生"
}
print(Doctor2())                //Doctor2(name: "李醫生")


//7️⃣
struct Office {
    private var passCode: String
    var address: String
    var employees: [String]
    init(address: String, employees: [String]) {
        self.address = address
        self.employees = employees
        self.passCode = "SEKRIT"
    }
}
let monmouthStreet = Office(address: "30 Monmouth St", employees: ["Paul Hudson"])
print(monmouthStreet)   //Office(passCode: "SEKRIT", address: "30 Monmouth St", employees: ["Paul Hudson"])

//8️⃣ ❌ self.屬性 = 餐數
//struct RebelBase {
//    private var location: String
//    private var peopleCount: Int
//    init(location: String, people: Int) {
//        self.location = location
//        self.people = peopleCount
//    }
//}
struct RebelBase {
    private var location: String
    private var peopleCount: Int
    init(location: String, people: Int) {
        self.location = location
        self.peopleCount = people
    }
}
let base = RebelBase(location: "Yavin", people: 1000)
print(base) //RebelBase(location: "Yavin", peopleCount: 1000)

//9️⃣
struct School {
    var staffNames: [String]
    private var studentNames: [String]
    init(staff: [String]) {
        self.staffNames = staff
        self.studentNames = [String]()  //已經實例化()，會變成[""]
    }
}
let royalHigh = School(staff: ["Mrs Hughes"])
print(royalHigh)        //School(staffNames: ["Mrs Hughes"], studentNames: [])


//1️⃣0️⃣
struct Customer {
    var name: String
    private var creditCardNumber: Int
    init(name: String, creditCard: Int) {
        self.name = name
        self.creditCardNumber = creditCard
    }
}
let lottie = Customer(name: "Lottie Knights", creditCard: 1234567890)
print(lottie)   //Customer(name: "Lottie Knights", creditCardNumber: 1234567890)
    
//1️⃣1️⃣ ❌ 型別要一樣才能相乘
//struct Toy {
//    var customerPrice: Double
//    private var actualPrice: Int
//    init(price: Int) {
//        actualPrice = price
//        customerPrice = actualPrice * 2
//    }
//}
struct Toy {
    var customerPrice: Int
    private var actualPrice: Int
    init(price: Int) {
        actualPrice = price
        customerPrice = actualPrice * 2
    }
}
let buzz = Toy(price: 10)
print(buzz) //Toy(customerPrice: 20, actualPrice: 10)

//1️⃣2️⃣
struct App {
    var name: String
    private var sales = 0
    init(name: String) {
        self.name = name
    }
}
let spotify = App(name: "Spotify")
print(spotify)      //App(name: "Spotify", sales: 0)

//: [Next](@next)
