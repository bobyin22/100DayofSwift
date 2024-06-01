//: [Previous](@previous)

import Foundation

//這就是struct的行為，值存在變數中，當複製的時候，得到deep copy的資料
var message = "Welcome"
var greeting = message
greeting = "Hello"

//class的行為則是指向記憶體，改變一個就會改變整個class (使用class是當我們不要想把資料變成一大堆copy而是共用同一份)

//: [Next](@next)
