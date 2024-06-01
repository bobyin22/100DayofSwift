//: [Previous](@previous)

import Foundation

// class 與 struct 五大差異

//1 class 沒有 memberwise，一定要寫init

//2 class 可以繼承 屬性 以及方法

//3 struct 生成的實例是新創建的，class 生成的實例是指向同一個記憶體

//4 class有 deinit，可以殺死生成的實例。struct沒有這一招

//5 class中 var屬性可以任意更改，struct中 var屬性可以不任意更改
// 定義一個類別
class MyClass {
    var variableProperty: Int = 10
}

// 定義一個結構
struct MyStruct {
    var variableProperty: Int = 20
}

// 創建常數實例
let myClassInstance = MyClass()
let myStructInstance = MyStruct()

// class 不可變動的是 實例本身(引用不可變)，不是內部的屬性
// 修改類別實例的屬性
myClassInstance.variableProperty = 100  // 可以成功
print(myClassInstance.variableProperty) //100


// 修改結構實例的屬性
//myStructInstance.variableProperty = 200 // 這行會報錯，因為 myStructInstance 是常數
//print(myStructInstance.variableProperty)

//------------------------------------------------------------------------------------------
class MyClass2 {
    let constantProperty: Int
    
    init(constantProperty: Int) {
        self.constantProperty = constantProperty
    }
}

let myClassInstance2 = MyClass2(constantProperty: 10)

// 嘗試修改 constantProperty
//myClassInstance2.constantProperty = 20 // 這會導致編譯錯誤，因為 constantProperty 被宣告為常數，無法修改
print(myClassInstance2.constantProperty) // 輸出：10

//: [Next](@next)
