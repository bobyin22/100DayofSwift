//: [Previous](@previous)

import Foundation

class Singer {
    func playSong() {
        print("Shake it off!")
    }
}

//taylor變數，在sing函式結束應該會死掉，但是因為剛好又被閉包使用，所以變成Strong reference
func sing() -> () -> Void {
    let taylor = Singer()   //變數是 Singer類的實體

    let singing = {         //變數是 閉包
        taylor.playSong()
        return
    }
    
//    let singing = { [weak taylor] in
//        taylor?.playSong()
//        return
//    }
    
//    let singing = { [unowned taylor] in
//        taylor.playSong()
//        return
//    }

    return singing
}

let singFunction = sing()
singFunction()

//: [Next](@next)
