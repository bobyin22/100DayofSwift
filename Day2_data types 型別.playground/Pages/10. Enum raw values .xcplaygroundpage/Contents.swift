//: [Previous](@previous)

import Foundation

enum Planet: Int {
    case mercury    //初始自動為0
    case venus      //1
    case earth      //2
    case mars
}

let earth = Planet(rawValue: 2)
print(earth!)  

enum PlanetNew: Int {
    case mercury = 1    //自訂為1
    case venus          //2
    case earth
    case mars
}

let earthNew = PlanetNew(rawValue: 2)   //venus
print(earthNew!)

//: [Next](@next)
