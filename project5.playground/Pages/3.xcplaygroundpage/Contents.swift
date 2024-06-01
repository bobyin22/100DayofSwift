//: [Previous](@previous)

import Foundation

class Singer {
    init() {
        playSong()
    }

    func playSong() {
        print("Shake it off!")
    }
}

func sing() -> () -> Void {
    let taylor = Singer()
    let adele = Singer()

    let singing = { [unowned taylor, unowned adele] in
        taylor.playSong()
        adele.playSong()
        return
    }

    return singing
}

//: [Next](@next)
