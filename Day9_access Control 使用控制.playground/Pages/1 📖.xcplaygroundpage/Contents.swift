//: [Previous](@previous)

import Foundation


//1️⃣   沒有寫init，可以用swift memberwise initializer
struct Employee {
    var name: String
    var yearsActive = 0     //swfit會自己知道已經給值
}

let roslin = Employee(name: "Laura Roslin") //swfit會自己知道yearsActive已經給值，生成實例的時候只填充尚未給值的部分
let adama = Employee(name: "William Adama", yearsActive: 45)


//2️⃣       沒用extionsion寫，不能用swift memberwise initializer
struct Employee2 {
    var name: String
    var yearsActive = 0

    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

//let roslin2 = Employee2(name: "Laura Roslin")     //🙄報錯
let roslin2 = Employee2()


//2️⃣-1️⃣       用extionsion寫，可以很彈性，還可以用swift memberwise initializer
struct Employee2_1 {
    var name: String
    var yearsActive = 0
}

extension Employee2_1 {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin2_1 = Employee2_1(name: "Laura Roslin")   //🙄不會報錯

// as does creating an anonymous employee
let anon = Employee2_1()                               //🙄也可單純不給參數



//3️⃣-1️⃣       有init，init加上參數，參數還沒有作用(因為沒有改到屬性值)
struct Employee3 {
    var name: String
    var yearsActive = 0

    init(name: String) {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}
let roslin3 = Employee3(name: "Laura Roslin")
print(roslin3.name) //此時竟然還是Anonymous


//3️⃣-2️⃣       有init，init加上參數，參數有作用(有改到屬性值)
struct Employee4 {
    var name: String
    var yearsActive = 0

    init(name: String) {
        self.name = name
        print("我動了手腳，參數替換")
    }
}
let roslin4 = Employee4(name: "Laura Roslin")
print(roslin4.name)         //我動了手腳，參數替換
                            //Laura Roslin



//: [Next](@next)
