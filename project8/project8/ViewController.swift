//
//  ViewController.swift
//  project8
//
//  Created by Bob on 2024/6/5.
//

import UIKit

class ViewController: UIViewController {
    
    var cluesLabel: UILabel!            //右
    var answerLabel: UILabel!           //左
    var currentAnswer: UITextField!     //中
    var scoreLabel: UILabel!            //右上
    var letterButtons = [UIButton]()    //下
    
    var activatedButtons = [UIButton]() //存儲使用者點擊的拼字
    var solutions = [String]()
    
    var score = 0
    var level = 1
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        //右上
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.textAlignment = .right
        scoreLabel.text = "分數： 0"
        view.addSubview(scoreLabel)
        
        //右
        cluesLabel = UILabel()
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        cluesLabel.font = UIFont.systemFont(ofSize: 24)
        cluesLabel.text = "CLUES"
        cluesLabel.numberOfLines = 0
        cluesLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)   //cluesLabel 被犧牲掉了
        view.addSubview(cluesLabel)
        
        //左
        answerLabel = UILabel()
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.font = UIFont.systemFont(ofSize: 24)
        answerLabel.text = "ANSWERS"
        answerLabel.numberOfLines = 0
        answerLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)  //answerLabel 被犧牲掉了
        view.addSubview(answerLabel)
        
        //中
        currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "點擊來猜猜"
        currentAnswer.textAlignment = .center
        currentAnswer.font = UIFont.systemFont(ofSize: 44)
        currentAnswer.isUserInteractionEnabled = false
        currentAnswer.backgroundColor = .systemPink
        view.addSubview(currentAnswer)
        
        //中 左 (不當作屬性)
        let submitBtn = UIButton(type: .system)
        submitBtn.translatesAutoresizingMaskIntoConstraints = false
        submitBtn.setTitle("SUBMIT", for: .normal)
        submitBtn.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        view.addSubview(submitBtn)
        
        //中 右 (不當作屬性)
        let clearBtn = UIButton(type: .system)
        clearBtn.translatesAutoresizingMaskIntoConstraints = false
        clearBtn.setTitle("CLEAR", for: .normal)
        clearBtn.addTarget(self, action: #selector(clearTapped), for: .touchUpInside)
        view.addSubview(clearBtn)
        
        //下 (不當作屬性)
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonsView)
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),
            cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),
            
            answerLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            answerLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),
            answerLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100),
            answerLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor),
            
            currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            currentAnswer.topAnchor.constraint(equalTo: cluesLabel.bottomAnchor, constant: 20),
            
            submitBtn.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor),
            submitBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            submitBtn.heightAnchor.constraint(equalToConstant: 44),
            
            clearBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            clearBtn.centerYAnchor.constraint(equalTo: submitBtn.centerYAnchor),
            clearBtn.heightAnchor.constraint(equalToConstant: 44),
            
            buttonsView.widthAnchor.constraint(equalToConstant: 750),
            buttonsView.heightAnchor.constraint(equalToConstant: 320),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.topAnchor.constraint(equalTo: submitBtn.bottomAnchor, constant: 20),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20)
        ])
        
        //建立20個按鈕
        let width = 150
        let height = 80
        for row in 0..<4 {
            for column in 0..<5 {
                let letterButton = UIButton(type: .system)
                letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
                letterButton.setTitle("WWW", for: .normal)
                letterButton.addTarget(self, action: #selector(letterTapped), for: .touchUpInside)
                let frame = CGRect(x: column * width, y: row * height, width: width, height: height)
                letterButton.frame = frame
                
                buttonsView.addSubview(letterButton)
                letterButtons.append(letterButton)
            }
        }
        
        cluesLabel.backgroundColor = .red
        answerLabel.backgroundColor = .blue
        buttonsView.backgroundColor = .green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadLevel()
    }
    
    @objc func letterTapped(_ sender: UIButton) {
        
    }
    
    @objc func submitTapped(_ sender: UIButton) {
        
    }
    
    @objc func clearTapped(_ sender: UIButton) {
        
    }

    
    func loadLevel() {
        var clueString = ""
        var solutionString = ""
        var letterBits = [String]()
        
        /*
         levelFileURL是：取得檔案url位置
         file:///Users/joy/Library/Developer/CoreSimulator/Devices/6802363F-84F6-4E0C-A3FF-2196E5CE575E/data/Containers/Bundle/Application/58C207E5-1E06-4FEC-8FC7-0C0B31D20847/project8.app/level1.txt
         */
        if let levelFileURL = Bundle.main.url(forResource: "level\(level)", withExtension: "txt") {
            
            /*
             levelContents是：把url轉成String
             Optional("HA|UNT|ED: Ghosts in residence\nLE|PRO|SY: A Biblical skin disease\nTW|ITT|ER: Short but sweet online chirping\nOLI|VER: Has a Dickensian twist\nELI|ZAB|ETH: Head of state, British style\nSA|FA|RI: The zoological web\nPOR|TL|AND: Hipster heartland")
             */
            if let levelContents = try? String(contentsOf: levelFileURL) {
                
                /*
                 lines是：把字串根據"\n"切成，陣列
                 ["HA|UNT|ED: Ghosts in residence", "LE|PRO|SY: A Biblical skin disease", "TW|ITT|ER: Short but sweet online chirping", "OLI|VER: Has a Dickensian twist", "ELI|ZAB|ETH: Head of state, British style", "SA|FA|RI: The zoological web", "POR|TL|AND: Hipster heartland"]
                 */
                var lines = levelContents.components(separatedBy: "\n")
                
                
                /*
                 ["OLI|VER: Has a Dickensian twist", "LE|PRO|SY: A Biblical skin disease", "POR|TL|AND: Hipster heartland", "TW|ITT|ER: Short but sweet online chirping", "SA|FA|RI: The zoological web", "ELI|ZAB|ETH: Head of state, British style", "HA|UNT|ED: Ghosts in residence"]
                 */
                lines.shuffle()
                
                //全部走一次陣列，從index 0，line是 lines[0]
                for (index, line) in lines.enumerated() {
                    /*
                     index 0
                     line "OLI|VER: Has a Dickensian twist"
                     */
                    
                    /*
                     parts是：把字串根據": "切成，陣列
                     ["OLI|VER", "Has a Dickensian twist"]
                     */
                    let parts = line.components(separatedBy: ": ")
                    /*
                     answer是: "OLI|VER"
                     */
                    let answer = parts[0]
                    
                    /*
                     clue是：Has a Dickensian twist
                     */
                    let clue = parts[1]
                    
                    /*
                     clueString是：
                     "1. Has a Dickensian twist\n"
                     */
                    clueString += "\(index + 1). \(clue)\n"
                    
                    /*
                     solutionWord是：OLIVER
                     */
                    let solutionWord = answer.replacingOccurrences(of: "|", with: "")
                    
                    /*
                     solutionString是：
                     "6 letters\n"
                     */
                    solutionString += "\(solutionWord.count) letters\n"
                    
                    /*
                     solutions是：
                     ["OLIVER"]
                     */
                    solutions.append(solutionWord)
                    
                    /*
                     bits是：
                     ["OLI", "VER"]
                     */
                    let bits = answer.components(separatedBy: "|")
                    
                    /*
                     letterBits是：
                     ["OLI", "VER"]
                     */
                    letterBits += bits              //for (index, line) in lines.enumerated() 所有迴圈走完，會變成陣列有20個元素，["OLI", "VER", "HA", "UNT, "ED", .......]
                }
            }
        }
        
        /*
         cluesLabel.text是：把\n去掉
         "1. Has a Dickensian twist\n" (舊)
         1. Has a Dickensian twist (新)
         */
        cluesLabel.text = clueString.trimmingCharacters(in: .whitespacesAndNewlines)
        
        /*
         answerLabel.text是：
         6 letters
         */
        answerLabel.text = solutionString.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //把下方按鈕UI位置重洗
        letterButtons.shuffle()
        
        
        //當for (index, line) in lines.enumerated() 所有迴圈走完，會變成陣列有20個元素，["OLI", "VER", "HA", "UNT, "ED", .......]
        if letterButtons.count == letterBits.count {
            for i in 0..<letterButtons.count {
                letterButtons[i].setTitle(letterBits[i], for: .normal)
            }
        }
    }
    
}

