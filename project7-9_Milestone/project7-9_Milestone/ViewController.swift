//
//  ViewController.swift
//  project7-9_Milestone
//
//  Created by Bob on 2024/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    var allWords = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //拿取txt檔案
        if let startWordsUrl = Bundle.main.url(forResource: "level1", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsUrl) {
                
                /// 參考：https://www.hackingwithswift.com/example-code/strings/how-to-split-a-string-into-an-array-componentsseparatedby
                print("startWords是：", startWords)                   //只是字串
                allWords = startWords.components(separatedBy: "\n")  //轉成陣列
            }
        } else {
            allWords = ["no access success"]
        }
        print("allWords是：", allWords)
    }
    
    /// 1. 丟入資料
    ///  1.1 Data拿取資料
    ///  1.2 UILabel顯示資料
    /// 2. UITextField空白
    /// 3. 建立26個英文字按鈕
    ///  3.1. 點擊英文字按鈕 UITextField一個一個字浮出現
    /// 4. 判斷是否與該筆資料相同
    ///  4.1 相同，本回合結束
    ///  4.2 不同，hangMan 多一個UIView的線條
    


}

