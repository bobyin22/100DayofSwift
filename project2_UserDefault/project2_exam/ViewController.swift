//
//  ViewController.swift
//  project2_exam
//
//  Created by Bob on 2024/4/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var barButton: UIBarButtonItem!
    
    var flagArray: [String] = ["estonia", "france", "germany", "ireland", "italy", "nigeria", "poland", "russia", "spain", "uk", "us"]
    var quizz: String?
    var randomCountry: Int?     //創建隨機數量，隨機國家當作答案
    var score = 0
    var testlimit = 10
    var isGuessRight: Bool?
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barButton.title = "看分數"
        view.backgroundColor = .systemGray4
        button1.layer.borderWidth = 1.0
        button1.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        button2.layer.borderWidth = 1.0
        button2.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        button3.layer.borderWidth = 1.0
        button3.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        setupQuesionUI()
        getWhereUserDefaultFile()
    }
    
    
    
    @IBAction func tapBarButtonItem(_ sender: UIBarButtonItem) {
        barButton.title = String(score)
    }
    
    //如果選對，分數+1，玩的次數-1，猜國家題目畫面要變動
    //如果選錯，分數-1，玩的次數-1，猜國家題目畫面不變
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.tag == randomCountry! {
            checkBtnStatus()
        } else if sender.tag == randomCountry! {
            checkBtnStatus()
        } else if sender.tag == randomCountry! {
            checkBtnStatus()
        } else {
            calculateMinusScoreAndPlayTime()
            popFaultMessage()
            
            // Project 12 添加上檢測 UserDefault用
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                if self.testlimit == 0 {
                    self.popStopMessage()
                }
            }
        }
    }
    
    func checkBtnStatus() {
        if testlimit == 0 {
            popStopMessage()
            //存UserDefault
            guard let userDefaultsHighestScore = defaults.array(forKey: "HighestScore") as? Int ?? nil else { return }
            //如果目前分數有比UserDefault大，要更新UserDefault值
            if score > userDefaultsHighestScore || userDefaultsHighestScore == nil{
                defaults.set(score, forKey: "HighestScore")
            }
        } else {
            calculatePlusSocreAndPlayTime()
            popRightMessage()
        }
    }
    
    
    func calculatePlusSocreAndPlayTime() {
        score += 1
        testlimit -= 1
    }
    
    func calculateMinusScoreAndPlayTime() {
        score -= 1
        testlimit -= 1
    }
    
    func popRightMessage() {
        myAlert(title: "Yes猜對了", message: "累積分數為\(score)分", from: self, actionTitle: "OK", handler: {
            self.setupQuesionUI()
        })
        title = "\(quizz!) 目前累計\(score)"
    }
    
    func popFaultMessage() {
        myAlert(title: "NO猜錯了", message: "累積分數為\(score)分", from: self, actionTitle: "OK", handler: {
            self.setupQuesionUI()
        })
        title = "\(quizz!) 目前累計\(score)"
    }
    
    func popStopMessage() {
        myAlert(title: "不能玩了", message: "非付費只能玩10次", from: self, actionTitle: "前往付費", handler: { 
            self.setupQuesionUI()
        })
        
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
    }
    
    
    func setupQuesionUI() {
        flagArray.shuffle()
        randomCountry = Int.random(in: 0...2)
        quizz = flagArray[randomCountry!].uppercased()
        title = "\(quizz!) 目前累計\(score)"
        
        button1.setImage(UIImage(named: flagArray[0]), for: .normal)
        button2.setImage(UIImage(named: flagArray[1]), for: .normal)
        button3.setImage(UIImage(named: flagArray[2]), for: .normal)
    }
    
    func getWhereUserDefaultFile() {
        // 獲取應用程序的沙盒目錄
        if let applibraryDDir = FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first {
                    
              // 拼接 Preferences 子目錄
              let preferencesDir = applibraryDDir.appendingPathComponent("Preferences")
                    
              // 檢查 Preferences 目錄是否存在
              if FileManager.default.fileExists(atPath: preferencesDir.path) {
                    print("UserDefaults 存儲位置：\(preferencesDir.path)")
              } else {
                    print("UserDefaults 存儲位置未找到")
              }
         } else {
            print("無法獲取應用程序沙盒目錄")
         }
    }

}


//初始
//[美國,英國,愛爾蘭,印度] []

//翻轉
//[印度,英國,愛爾蘭,美國]

//圖片 印度 英國 愛爾蘭
//如果點到第一個是Array[0]

//隨機創造答案


//MARK:
// 遊戲結束要存UserDefault
// 遊戲結束scroe變數要比較UserDefault，如果有比較大，要跳Alert
