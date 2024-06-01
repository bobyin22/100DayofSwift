//: [Previous](@previous)

import Foundation

//1 把閉包賦值給變數，用變數來呼叫閉包
let driving = {
    print("我開車")
}

//2 閉包可以像 函式一樣有參數與回傳值
let driving2 = { (place:String) in
    print("我開車去\(place)")
}

//3 函式的參數 可以是閉包(閉包可以有參數與回傳值)
func travel(action: (String)-> Void) {
    print("我要出發了")
    action("--啥--")
    print("我到了")
}


//4 如果函式的最後一個參數是閉包，可以用traling clousre寫法
travel(action: { (a1:String) -> Void in
    print("最傳統的執行閉包\(a1)")                      //我要出發了
})                                                  //最傳統的執行閉包--啥--
                                                    //我到了

travel { a1 in
    print("\(a1)使用尾端閉包執行閉包")                    //我要出發了
}                                                     //--啥--使用尾端閉包執行閉包
                                                      //我到了
//5 簡化 $0 $1 取代參數1 參數2
travel {
    print("\($0)使用$0 閉包")                         //我要出發了
}                                                   //--啥--使用$0 閉包
                                                    //我到了
    

//6 捕獲閉包
func travel2() -> (String) -> Int {
    var counter = 1
    
    func captureReturn(a1:String) -> Int {
        print("\(counter). I'm going to \(a1)")
        counter += 1
        return counter
    }
    
    return captureReturn
    
}
travel2()           
travel2()
travel2()


//補充範例長這樣
func travel3() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

//: [Next](@next)
