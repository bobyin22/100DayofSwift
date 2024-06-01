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
    
    
    @IBAction func tapBarButtonItem(_ sender: UIBarButtonItem) {
        barButton.title = String(score)
    }
    
    
    
    var flagArray: [String] = ["estonia", "france", "germany", "ireland", "italy", "nigeria", "poland", "russia", "spain", "uk", "us"]
    var quizz: String?
    var randomCountry: Int?     //創建隨機數量，隨機國家當作答案
    var score = 0
    var testlimit = 10
    
    var isGuessRight: Bool?
    
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
        }
    }
    
    func checkBtnStatus() {
        if testlimit == 0 {
            popStopMessage()
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

}


//初始
//[美國,英國,愛爾蘭,印度] []

//翻轉
//[印度,英國,愛爾蘭,美國]

//圖片 印度 英國 愛爾蘭
//如果點到第一個是Array[0]

//隨機創造答案
