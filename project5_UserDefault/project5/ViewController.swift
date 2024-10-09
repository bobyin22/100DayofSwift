//
//  ViewController.swift
//  project5
//
//  Created by Bob on 2024/5/21.
//

import UIKit

class ViewController: UITableViewController {

    var allWords = [String]()
    var usedWords = [String]()
    
    //find path
    //load content rxt file
    //split it arrayd
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(promptForAnswer))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(promptForRefresh))
        
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            /*
             startWordsURL: file:///Users/joy/Library/Developer/CoreSimulator/Devices/363B9CC1-23BC-4817-BC17-8359F5E98631/data/Containers/Bundle/Application/9558006A-511B-4577-8F68-46A34182D52E/project5.app/start.txt
             */
            print("startWordsURL: \(startWordsURL)")

            if let startWords = try? String(contentsOf: startWordsURL) {
                /*
                 aardvark
                 abacuses
                 abalones
                 ...
                 */
                print("startWords: \(startWords)")
                
                allWords = startWords.components(separatedBy: "\n")
                /*
                 ["aardvark", "abacuses", "abalones",,,]
                 */
                print("allWords: \(allWords)")
            }
            
            if allWords.isEmpty {
                allWords = ["不能載入"]
            }
            
            startGame()
        }
    }
    
    func startGame() {
        title = allWords.randomElement()
        usedWords.removeAll(keepingCapacity: true)
        tableView.reloadData()
    }
    
    @objc func promptForRefresh() {
        startGame()
    }
    
    @objc func promptForAnswer() {
        let ac = UIAlertController(title: "Enter answer", message: nil, preferredStyle: .alert) //點擊彈跳視窗
        ac.addTextField()                                                                       //可以打字的Alert
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) {                    //Alert按下確定後的動作內容
            [weak self, weak ac] action in
            guard let answer = ac?.textFields?[0].text else { return }
            
            //不允許 小於三個英文字
            if answer.count < 3 {
                let ac = UIAlertController(title: "不符合遊戲規則", message: "不能少於3個單字", preferredStyle: .alert)    //只要其中一個有錯，就會走到這，跳alert
                ac.addAction(UIAlertAction(title: "OK", style: .default))
                self!.present(ac, animated: true)
                return
            } else if ac?.textFields?[0].text == self!.title  { //不允許 與題目單字一樣
                let ac = UIAlertController(title: "不符合遊戲規則", message: "你的單字不能跟題目一樣", preferredStyle: .alert)    //只要其中一個有錯，就會走到這，跳alert
                ac.addAction(UIAlertAction(title: "OK", style: .default))
                self!.present(ac, animated: true)
                return
            }
            self?.submit(answer)
        }
        
        ac.addAction(submitAction)                                                              //Alert加上按鈕，可以點確定
        present(ac, animated: true)
    }
    
    func submit(_ answer: String) {
        let lowerAnswer = answer.lowercased()   //把使用者打的字改小寫
        print("lowerAnswer: \(lowerAnswer)")
        
        let errorTitle: String
        let errorMessage: String
        
        if isPossible(word: lowerAnswer) {
            if isOriginal(word: lowerAnswer) {
                if isReal(word: lowerAnswer) {
                    usedWords.insert(answer, at: 0)     //確認完之後，加入到tableview 陣列中
                    print("usedWords: \(usedWords)")
                    //tableView.reloadData()              //reload讓資料顯示UI
                    
                    let indexPath = IndexPath(row: 0, section: 0)               //自行建立IndexPath型別
                    tableView.insertRows(at: [indexPath], with: .automatic)     //插入tableView位置
                   return                                                       //全對，會走到這，然後不跳Alert
                } else {    //如果isReal失敗
                    showErrorMessage(errorTitle: "沒有這個單字", errorMessage: "你不能亂編單字")
                }
            } else {    //如果isOriginal失敗
                showErrorMessage(errorTitle: "你已經用過這單字了", errorMessage: "請想新的單字")
            }
        } else {    //如果isPossible失敗
            guard let title = title else { return }
            showErrorMessage(errorTitle: "你的單字裡面有字母，不包含在題目中", errorMessage: "你不能從\(title.lowercased()) 單字裡，找到你的英文字母")
        }
        
    }
    
    func showErrorMessage(errorTitle: String, errorMessage: String) {
        let ac = UIAlertController(title: errorTitle, message: errorMessage, preferredStyle: .alert)    //只要其中一個有錯，就會走到這，跳alert
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    /*
     isPossible
     這個函數是在檢查你輸入的單字,是否是由目前這個游戲題目的單字所組成。就像是拼字遊戲,你只能用題目給的字母來重新組合新的單字。

     舉例來說,如果題目是"apple",你輸入"pale",這個函數會檢查"pale"的每個字母是否都存在於"apple"中,因為它們都存在,所以會回傳確定這是一個可能的組合
     
     • isPossible是確認navigation title 也就是題目，使用者拼單字是否有對 (Apple -> elppA 雖然不是單字 但是對於isPossible是true)

     */
    //
    func isPossible(word: String) -> Bool {
        guard var tempWord = title?.lowercased() else { return false }
        
        for letter in word {
            if let position = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: position)
            } else {
                return false
            }
        }
        return true
    }
    
    /*
     isOriginal
     它只是在檢查你輸入的單字之前有沒有其他人使用過。如果之前沒人使用過,它就會回傳確定,表示這是一個新的、原創的單字組合。但如果之前已經有人使用過,它就會回傳否定。
     
     • isOriginal 是確認同個單字不能多次輸入
     */
    func isOriginal(word: String) -> Bool {
        return !usedWords.contains(word)        //使用者輸入的字陣列，有沒有包含剛剛輸入的字
    }
    
    /*
     isReal
     在檢查你輸入的單字是不是一個真實存在的英文單字，查詢電腦內建的英文單字字典,如果你輸入的單字存在於字典中,它就會回傳確定,代表這是一個真實的單字
     
     • isReal 檢查這個單字是不是真的單字
     */
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)  //UITextCheck只能用OC寫法，utf16
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
}


extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usedWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Word", for: indexPath)
        cell.textLabel?.text = usedWords[indexPath.row]
        return cell
    }
}
