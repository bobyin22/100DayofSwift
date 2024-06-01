//: [Previous](@previous)

import Foundation

//每個屬性使用了預設值，因此我們不需要寫init
class Person {
    var name = "Anonymous"
}

class Customer: Person {
    var id = 12345
}

class Employee: Person {
    var salary = 50_000
}

let customer = Customer()
let employee = Employee()
let people = [customer, employee]       //元素1是 Customer類，元素2是 Employee類
                                        //迴圈時轉型可以成功

for person in people {
    if let customer = person as? Customer {
        print("我是顧客, id是\(customer.id)")
    } else if let employee = person as? Employee {
        print("我是員工, id是\(employee.salary)")
    }
}


//我是顧客, id是12345
//我是員工, id是50000

//: [Next](@next)
