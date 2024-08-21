//
//  ViewController.swift
//  project7-9_Milestone
//
//  Created by Bob on 2024/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    let buttonsView = UIView()
    
    var allWords = [String]()
    
    var letterBtns = [UIButton]()
    
    var quizTextField: UITextField = {
       let textFiled = UITextField()
        textFiled.backgroundColor = .white
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBottomView()
        setup20Btn()
        
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
        
        //顯示題目
        setupTextFieldUI()
    }
    
    func setupBottomView() {
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonsView)
        NSLayoutConstraint.activate([
            buttonsView.widthAnchor.constraint(equalToConstant: 750),
            buttonsView.heightAnchor.constraint(equalToConstant: 320),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20)
        ])
        buttonsView.backgroundColor = .green
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
    

    func setup20Btn() {
     let width = 150
        let height = 80
        for row in 0..<4 {
            for column in 0..<5 {
                let letterBtn = UIButton(type: .system)
                letterBtn.setTitle("WWW", for: .normal)
                let frame = CGRect(x: column * width, y: row * height, width: width, height: height)
                letterBtn.frame = frame
                letterBtn.layer.borderWidth = 0.5
                letterBtn.layer.borderColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 1).cgColor

                buttonsView.addSubview(letterBtn)
                letterBtns.append(letterBtn)
            }
        }
    }
    
    func setupTextFieldUI() {
        //quizTextField.text = allWords.first
        quizTextField.placeholder = allWords.first

        view.addSubview(quizTextField)
        NSLayoutConstraint.activate([
            quizTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            quizTextField.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            quizTextField.widthAnchor.constraint(equalToConstant: 80),
            quizTextField.heightAnchor.constraint(equalToConstant: 100),
        ])
    }

}


/*
 apple
 book
 cat
 dog
 elephant
 fish
 girl
 house
 icecream
 juice
 kite
 lion
 moon
 night
 ocean
 pencil
 queen
 rain
 sun
 tree
 umbrella
 violin
 water
 xray
 yellow
 zebra
 computer
 dream
 flower
 mountain
 */
