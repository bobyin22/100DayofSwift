//: [Previous](@previous)

import Foundation

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}
var taylor = Singer(name: "Taylor", age: 25)
taylor.name
taylor.age
taylor.sing()

//子類 新增了屬性
class HeavyMetalSinger: Singer {
    var noiseLevel: Int

    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel        //先寫好子類
        super.init(name: name, age: age)    //再init父類
    }

    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}
let radioHead = HeavyMetalSinger(name: "搖滾電台", age: 60, noiseLevel: 9)
print(radioHead.name, radioHead.age, radioHead.noiseLevel)

//: [Next](@next)
