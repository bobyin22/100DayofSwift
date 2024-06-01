//: [Previous](@previous)

import Foundation


func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

//傳統呼叫方式
let I_drive_myCar = {
    print("我開車賓士拉")
}

travel(action: I_drive_myCar)   //I'm getting ready to go.
                                //我開車拉
                                //I arrived!

//閉包Traling寫法
travel() {
    print("我開Honda拉")         //I'm getting ready to go.
}                               //我開Honda拉
                                //I arrived!

//閉包Traling寫法 連括弧都不要
travel {
    print("我開Toyata拉")        //I'm getting ready to go.
}                               //我開Toyata拉
                                //I arrived!

//: [Next](@next)
