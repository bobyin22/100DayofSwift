//
//  ViewController.swift
//  project2
//
//  Created by Bob on 2024/4/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }

    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "你的分數是 \(score)", preferredStyle: .alert)
        
        //寫法1
//        ac.addAction(UIAlertAction(title: "繼續", style: .default, handler: askQuestion))
        
        //寫法2
//        ac.addAction(UIAlertAction(title: "繼續", style: .default, handler: { (action: UIAlertAction) in
//            self.askQuestion()
//        }))
        
        //寫法3
        ac.addAction(UIAlertAction(title: "繼續", style: .default, handler: { _ in
            self.askQuestion()
        }))
        
        
        /* 解釋
         //
         askQuestion
         只是提供了方法的名稱，但沒有立即執行它。這樣的話，方法將在稍後的某個時刻根據需要被執行
         
         askQuestion()
         立即運行了 askQuestion 方法
         
         //Attaches an action object to the alert or action sheet.
         func addAction(_ action: UIAlertAction)
         
         //Create and return an action with the specified title and behavior.
         convenience init(
             title: String?,
             style: UIAlertAction.Style,
             handler: ((UIAlertAction) -> Void)? = nil
         )
         
         
         //An action that can be taken when the user taps a button in an alert.
         @MainActor
         class UIAlertAction : NSObject
         */
        
        
        present(ac, animated: true)
    }
    
}

