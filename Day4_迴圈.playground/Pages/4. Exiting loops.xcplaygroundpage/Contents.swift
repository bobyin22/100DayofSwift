//: [Previous](@previous)

import Foundation

var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break       //跳出函式
    }

    countDown -= 1
}

//: [Next](@next)
