//: [Previous](@previous)

import Foundation

//沒有capture
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")


//有capture
func travel2() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result2 = travel2()
result2("London")        //1. I'm going to London
result2("London")        //2. I'm going to London
result2("London")        //3. I'm going to London


//⭐️沒有補獲
func makeIncrementer() -> () -> Int {
    var counter = 0         //counter本人
    
    return {
        return counter + 1  //回傳不是counter喔，這裏並沒有回傳counter本人
    }
}

let incrementer = makeIncrementer()

print(incrementer()) // 1
print(incrementer()) // 1
print(incrementer()) // 1

//⭐️有補獲
func makeIncrementer3() -> () -> Int {
    var counter = 0         //counter本人
    
    return {
        counter += 1        //對counter進行修改
        return counter      //counter本人
    }
}

let incrementer3 = makeIncrementer3()

print(incrementer3()) // 1
print(incrementer3()) // 2
print(incrementer3()) // 3


//有補獲！？
func makeIncrementer2() -> () -> Int {
    var counter = 0
    
    return {
        counter += 1
        return counter + 1
    }
}

let incrementer2 = makeIncrementer2()

print(incrementer2()) // 2
print(incrementer2()) // 3
print(incrementer2()) // 4




//: [Next](@next)
