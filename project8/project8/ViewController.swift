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
    
    var score = 0 {
        didSet {
            scoreLabel.text = "分數是: \(score)"
        }
    }
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
                letterButton.layer.borderWidth = 1.0
                letterButton.layer.borderColor = UIColor.lightGray.cgColor
                
                buttonsView.addSubview(letterButton)
                letterButtons.append(letterButton)
            }
        }
        
        cluesLabel.backgroundColor = .red
        answerLabel.backgroundColor = .systemMint
        buttonsView.backgroundColor = .green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.global(qos: .userInitiated).async {
            self.loadLevel()
        }
        
    }
    
    //點擊下方猜謎的按鈕
    @objc func letterTapped(_ sender: UIButton) {
        guard let buttonTitle = sender.titleLabel?.text else { return }
        
        //把點擊的字，加入到textField中
        currentAnswer.text = currentAnswer.text?.appending(buttonTitle)
        activatedButtons.append(sender) //存儲使用者點擊的字
        sender.isHidden = true          //點擊後，要隱藏，不能再讓使用者點
    }
    
    func winThisRound(arr: [String]) -> Bool {
        for element in arr {
            if element.contains("letters") {
                print("還沒結束")
                return false
            }
        }
        print("本局贏了")
        return true
    }
    
    //送出答案
    @objc func submitTapped(_ sender: UIButton) {
        guard let answerText = currentAnswer.text else { return }
        
        if let solutionPosition = solutions.firstIndex(of: answerText) {
            activatedButtons.removeAll()
            
            var splitAnswers = answerLabel.text?.components(separatedBy: "\n")
            splitAnswers?[solutionPosition] = answerText
            answerLabel.text = splitAnswers?.joined(separator: "\n")    //因為選擇正確，露出答案
            
            currentAnswer.text = ""
            score += 1      //這裡分數增加後，didSet那邊會連動改值
            

            //MARK: 目前問題因為activatedButtons會被removeAll所以，進入下一回合下方按鈕不會回覆變成able
            if winThisRound(arr: splitAnswers!) == true {
                let ac = UIAlertController(title: "Well done!", message: "Are you ready for the next level?", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Let's go!", style: .default, handler: levelUp))
                present(ac, animated: true)
            }
        } else {
            score -= 1
            let ac = UIAlertController(title: "答錯", message: "請仔細思考", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "好的", style: .default))
            present(ac, animated: true)
        }
    }
    
    //全部答對，要換題目，分數更新
    func levelUp(action: UIAlertAction) {
        level += 1
        
        solutions.removeAll(keepingCapacity: true)
        loadLevel()
        
        for button in letterButtons {
            button.isHidden = false
        }
    }
    
    //手動清除
    @objc func clearTapped(_ sender: UIButton) {
        currentAnswer.text = ""
        for button in activatedButtons {
            button.isHidden = false     //清除後，可以再讓使用者點擊按鈕
        }
        activatedButtons.removeAll()
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
                    solutions.append(solutionWord)      //MARK: 這裡有存答案
                    
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
        
        
        DispatchQueue.main.async {
            /*
             cluesLabel.text是：把\n去掉
             "1. Has a Dickensian twist\n" (舊)
             1. Has a Dickensian twist (新)
             */
            self.cluesLabel.text = clueString.trimmingCharacters(in: .whitespacesAndNewlines)
            
            /*
             answerLabel.text是：
             6 letters
             */
            self.answerLabel.text = solutionString.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //把下方按鈕UI位置重洗
            self.letterButtons.shuffle()
            
            
            //當for (index, line) in lines.enumerated() 所有迴圈走完，會變成陣列有20個元素，["OLI", "VER", "HA", "UNT, "ED", .......]
            if self.letterButtons.count == letterBits.count {
                for i in 0..<self.letterButtons.count {
                    self.letterButtons[i].setTitle(letterBits[i], for: .normal)
                }
            }
        }
        
    }
    
}

