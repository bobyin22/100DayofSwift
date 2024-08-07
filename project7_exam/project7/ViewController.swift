//
//  ViewController.swift
//  project7
//
//  Created by Bob on 2024/6/2.
//

import UIKit

class ViewController: UITableViewController {
    var petitions = [Petition]()      //陣列是裝所有資料，資料型別是Petition
    var filterPetitions = [Petition]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarUI()
        
        //let urlString = "https://api.whitehouse.gov/va/petitions.json?limit=100"
        //let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        
        let urlString: String
        
        if navigationController?.tabBarItem.tag == 0 {
            urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        } else {
            //urlString = "https://api.whitehouse.gov/va/petitions.json?signatureCountFloor=10000&limit=100"
            urlString = "https://www.hackingwithswift.com/samples/petitions-2.json"
        }
        
        DispatchQueue.global(qos: .userInitiated).async {
            if let url = URL(string: urlString) {
                if let data = try? Data(contentsOf: url) {  //把url型別 轉型成 Data型別
                    self.parse(json: data)
                    return              //有解析成功跳出viewDidLoad，不走showError函式
                }
            } else {
                DispatchQueue.main.async {
                    self.showError()                 //無解析成功，viewDidLoad繼續往下走showError函式
                }
            }
        }
    }
    
    func setupTabBarUI() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bell.square"), style: .plain, target: self, action: #selector(btnNewsFromTabBarTap))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(btnNewsFilterTabBarTap))
    }
    
    @objc func btnNewsFilterTabBarTap() {
        
        let ac  = UIAlertController(title: "篩選", message: "請輸入篩選新聞字串", preferredStyle: .alert)
        ac.addTextField()
        
        ac.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak self] action in
            print("\(ac.textFields![0].text!)")
            guard let self else { return }
            
            DispatchQueue.global(qos: .userInitiated).async {
                self.filterPetitions.removeAll()
                
                for i in self.petitions {
                    print("i是 \(i)")
                    
                    var upperLetter = ""
                    DispatchQueue.main.async {
                        for j in ac.textFields![0].text! {
                            if j == ac.textFields![0].text!.first {
                                upperLetter += j.uppercased()
                            } else {
                                upperLetter += j.lowercased()
                            }
                        }
                    }
                    
                    DispatchQueue.main.async {
                        //大小寫都要一起Filter，意思是說remove Remove都要一起搜
                        if i.title.contains("\(ac.textFields![0].text!)") ||  i.title.contains("\(upperLetter)") {
                            self.filterPetitions.append(i)
                        }
                    }
                }
                
                self.petitions = self.filterPetitions
                print("filePetitions是 \(self.filterPetitions)")
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
        }))
        
        
        present(ac, animated: true)
    }
    
    @objc func btnNewsFromTabBarTap() {
        let ac = UIAlertController(title: "資料來源", message: "https://api.whitehouse.gov/va/petitions.json?limit=100", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func showError() {
        let ac = UIAlertController(title: "載入失敗", message: "網路可能有問題，請檢查，再重試", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetitions.results   //轉型完後的json賦值給陣列
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let petition = petitions[indexPath.row]     //陣列[indexPath.row]，拆解出個別元素，賦值給變數
        cell.textLabel?.text = petition.title       //每個row去吃值
        cell.detailTextLabel?.text = petition.body  //每個row去吃值
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()             //DetailVC是純code，所以不用storyboad push推出
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

