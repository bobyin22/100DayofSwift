//: [Previous](@previous)

import Foundation

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {
}

struct GoogleEmployee: Employee {
    func calculateWages() -> Int {
        print("100_000月薪")
        return 100_000
    }
    
    func study() {
        print("練刷題")
    }
    
    func takeVacation(days: Int) {
        print("每年有\(days)+假期")
    }
}
let TWGoogleEmployee = GoogleEmployee()
TWGoogleEmployee.calculateWages()       //100_000月薪
TWGoogleEmployee.study()                //練刷題
TWGoogleEmployee.takeVacation(days: 15) //每年有15+假期

//: [Next](@next)
