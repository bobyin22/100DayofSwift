//: [Previous](@previous)

import Foundation

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}



let myClosure = { () -> Void in
    print("印出這是一個Easy過場動畫")
}
animate(duration: 5.0, animations: myClosure)   //Starting a 5.0 second animation…
                                                //印出這是一個過場動畫

animate(duration: 6.0, animations: {            //Starting a 6.0 second animation…
    print("印出這是一個Mid過場動畫")                //印出這是一個Mid過場動畫
})

animate(duration: 7.0) {                        //Starting a 7.0 second animation…
    print("印出這是一個Hard過場動畫")                //印出這是一個Hard過場動畫
}



//: [Next](@next)
