//
//  ViewController.swift
//  project4-6_Milestone
//
//  Created by Bob on 2024/6/1.
//

import UIKit

class ViewController: UITableViewController {

    var userShopList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: .remove, style: .done, target: self, action: #selector(clickRemoveBar))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: .add, style: .done, target: self, action: #selector(clickAddBar))
    }
    
    @objc func clickRemoveBar() {
        userShopList.removeAll()
        tableView.reloadData()
    }
    
    @objc func clickAddBar() {
        let alert = UIAlertController(title: "購物吧", message: "請填入你想要的商品", preferredStyle: .alert)
        alert.addTextField { text in
            print("alert.addTextField 使用者輸入的是：\(text)")
        }
        let action = UIAlertAction(title: "確定", style: .default) { [self] action in
            print("action變數：\(alert.textFields?[0].text)")
            
            //MARK: 寫法1
            //陣列插入在最前面 [元素0, 元素1, 元素2]
            //tableView把購物項目放入最後一個row
            userShopList.append(alert.textFields![0].text!)
            tableView.reloadData()
            
            //MARK: 寫法2
            //陣列插入在最前面 [元素2, 元素1, 元素0]
            //tableView把購物項目放入最上一個row
            //userShopList.insert(alert.textFields![0].text!, at: 0)
            //let indexPath = IndexPath(row: 0, section: 0)
            //tableView.insertRows(at: [indexPath], with: .automatic)
        }
        
        alert.addAction(_: action)
        present(alert, animated: true)
    }
}

extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userShopList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = userShopList[indexPath.row]
        return cell
    }
}


