//: [Previous](@previous)

import Foundation

//MARK: 如果Singer是class類內var屬性，實例var是會被改變的
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)  //Taylor Swift

//賦值實例給 新實例
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singerCopy.name)  //Justin Bieber
print(singer.name)      //Justin Bieber


//MARK: 如果Singer是struct類內var屬性，實例var是會被改變的
struct Singer1 {
    var name = "Taylor Swift1"
}
var singer1 = Singer1()
print(singer1.name)                 //Taylor Swift1

//賦值實例給 新實例
var singerCopy1 = singer1
singerCopy1.name = "Justin Bieber"
print(singerCopy1.name)             //Justin Bieber
print(singer1.name)                 //Justin Bieber

//: [Next](@next)
