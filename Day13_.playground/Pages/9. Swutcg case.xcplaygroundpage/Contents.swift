//: [Previous](@previous)

import Foundation

//範例一 基本switch
let liveAlbums = 2
switch liveAlbums {
case 0:
    print("You're just starting out")
case 1:
    print("You just released iTunes Live From SoHo")
case 2:
    print("You just released Speak Now World Tour")
default:
    print("Have you done something new?")
}

//範例二 switch與 check range value
let studioAlbums = 5
switch studioAlbums {
case 0...1:
    print("You're just starting out")
case 2...3:
    print("You're a rising star")
case 4...5:
    print("You're world famous!")
    fallthrough
default:
    print("Have you done something new?")
}

//: [Next](@next)
