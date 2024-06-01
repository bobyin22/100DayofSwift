//: [Previous](@previous)

import Foundation

//參數1 _ values: [Int]
//參數2 using closure: (Int, Int) -> Int
//函式回傳 -> Int
func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    // start with a total equal to the first value
    var current = values[0]

    //走兩次
    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
    }

    // send back the final current value
    return current
}


let numbers = [10, 20, 30]



//呼叫方法1
//函式參數1代陣列，參數2是閉包也是最後一個參數所以用trailing閉包寫在{後
let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}

print(sum)  //60


//呼叫方法2
let multiplied = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal * next
}

print(multiplied)   //6,000


//呼叫方法3
let sum2 = reduce(numbers, using: +)    //60

//: [Next](@next)
