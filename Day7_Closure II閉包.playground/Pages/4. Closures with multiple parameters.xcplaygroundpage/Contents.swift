//: [Previous](@previous)

import Foundation

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}


//之前的呼叫方式
travel { (a1: String, a2: Int) -> String in
    return "我要去 \(a1) 用時速\(a2)公里"                  //I'm getting ready to go.
}                                                       //我要去 London 用時速60公里
                                                        //I arrived!
//簡寫用 traling clousre 並且用 $0 $1 代表參數
travel {
    "I'm going to \($0) at \($1) miles per hour."      //I'm getting ready to go.
}                                                      //I'm going to London at 60 miles per hour.
                                                       //I arrived!

//: [Next](@next)
