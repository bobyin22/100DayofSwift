//: [Previous](@previous)

import Foundation

//Dictionary                    可不需要表示型別
var teams1 = [String: String]() //創建空Dictionary
teams1["Paul"] = "Red"
print(teams1)

//Dictionary 硬要表示型別可寫
var teams2 = Dictionary<String, String>()

//--------------------------------------------------------
//Array                         可不需要表示型別
var results1 = [Int]()          //創建空Array
results1.append(100)
print(results1)

//Array 硬要表示型別可寫
var results2 = Array<Int>()

//--------------------------------------------------------
//Set
var words = Set<String>()       //創建空Set
words.insert("Hello")
print(words)    //["Hello"]

var numbers = Set<Int>()        //創建空Set
numbers.insert(99)
print(numbers)  //[99]


//要创建一个空的 Tuple，只需使用括号即可：
var myTuple = ()


//: [Next](@next)
