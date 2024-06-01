//: [Previous](@previous)

import Foundation

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 3
    }
}

let london = City(population: 100)
london.collectTaxes()   //回傳300


//: [Next](@next)
