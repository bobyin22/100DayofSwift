//: [Previous](@previous)

import Foundation

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
    engine(100)
    print("生產汽車")
}

buildCar(name: "100", engine: changeSpeed)  //Changing speed to 100kph
                                            //生產汽車
//: [Next](@next)
