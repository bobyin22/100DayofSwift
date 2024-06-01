//: [Previous](@previous)

import Foundation

for i in 1...10 {
    if i % 2 == 1 {
        continue    //i=1 進入if判斷，因為continue，所以直接往下進入下個迴圈i=2
    }

    print(i)        //i=2 沒進入if判斷，所以直接印出2
}

//: [Next](@next)
