//: [Previous](@previous)

import Foundation

//閉包 有參數 無回傳值
let payment1 = { (user: String) in
    print("Paying \(user)…")
}

payment1("籃球")


//閉包 有參數 有回傳值
let payment2 = { (user: String) -> Bool in
    print("Paying \(user)…")
    return true
}

if payment2("桌球") == true {
    print("走到true")     //Paying 桌球…
                         //走到true
} else {
    print("走到false")
}



//閉包 無參數 有回傳值 布林
let payment3 = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}


payment3()              //print("Paying an anonymous person…")


//: [Next](@next)
