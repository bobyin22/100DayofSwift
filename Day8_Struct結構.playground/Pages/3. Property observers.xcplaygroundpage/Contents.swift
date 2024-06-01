//: [Previous](@previous)

import Foundation

struct Progress {
    var task: String
    var amount: Int
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


struct Progress2 {
    var task: String
    var amount: Int {
        didSet {
            print("值改了")
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress2 = Progress2(task: "洗衣服", amount: 78)
progress2.amount = 80           //值改了
                                //洗衣服 is now 80% complete
//: [Next](@next)
