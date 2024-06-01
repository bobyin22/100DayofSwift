//: [Previous](@previous)

import Foundation

//Property observers
struct Person0 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person0(clothes: "T-shirts")
taylor.clothes = "short skirts"             //I'm changing from T-shirts to short skirts
                                            //I just changed from T-shirts to short skirts

//Computed properties
struct Person {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person(age: 25)
print(fan.ageInDogYears)    //175

//: [Next](@next)
