//: [Previous](@previous)

import Foundation


//continue是直接離開該次迴圈，進入下一次迴圈
var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)") //My favorite song is Shake it Off
                                         //My favorite song is Look What You Made Me Do
}

//: [Next](@next)
