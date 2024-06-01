//: [Previous](@previous)

import Foundation

//✅有static寫法，任何資料夾，Unwrap.appURL 就可以拿到網址
struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
}

print(Unwrap.appURL)        //https://itunes.apple.com/app/id1440611372


//❌沒有static寫法，要拿到網址，要先實例化才行，不好
struct Unwrap_bad {
    let appURL = "https://itunes.apple.com/app/id1440611372"
}
let myUnwrap_bad = Unwrap_bad()
print(myUnwrap_bad.appURL)  //https://itunes.apple.com/app/id1440611372


//改用enum更好
enum Unwrap2 {
  private static var entropy = Int.random(in: 1...1000)

  static func getEntropy() -> Int {
    entropy += 1
    return entropy
  }
}
let entropy1 = Unwrap2.getEntropy()
let entropy2 = Unwrap2.getEntropy()

print(entropy1) // 445
print(entropy2) // 446

//: [Next](@next)
