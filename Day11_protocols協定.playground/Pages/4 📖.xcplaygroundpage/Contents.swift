//: [Previous](@previous)

import Foundation

//因為Array、Set、Dictionary都有遵從Sequence協定
//                              在Sequence協定下寫了Extension allSatisfy方法
//所有陣列、集合和字典都遵循該協定。這意味著該allSatisfy()方法立即可用於所有這些類型

//Array
let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { (number) -> Bool in     //false
    number.isMultiple(of: 2)
}

/*
 簡化寫法
 let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
 */

//Set
let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

//Dic
let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

//: [Next](@next)
