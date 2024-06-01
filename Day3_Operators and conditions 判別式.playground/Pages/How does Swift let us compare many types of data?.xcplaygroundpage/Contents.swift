//: [Previous](@previous)

import Foundation

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)   //這裡有點像是，已經用人話說 小<中<大   ，而不是用字串英文字母誰先誰後比較


//: [Next](@next)
