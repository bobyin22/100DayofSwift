//: [Previous](@previous)

import Foundation

//不會有結果是optional，有值或替代值
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous" //因為沒有值，但是Default給了 Anonymous

//: [Next](@next)
