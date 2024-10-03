//
//  ViewController.swift
//  project1
//
//  Created by 邱慧珊 on 2024/4/27.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    var picturesShowCount = [Int]()
    
    let defaults = UserDefaults.standard

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm View"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        DispatchQueue.global(qos: .userInitiated).async {
            self.fetchFileData()
        }
        //performSelector(inBackground: #selector(fetchFileData), with: nil)  //資料在背景執行
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    @objc func fetchFileData() {
        let fm = FileManager.default    //file System
        let path = Bundle.main.resourcePath!    //direct
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        print("fm是：\(fm)")  //fm是：<NSFileManager: 0x600000227cc0>
        
        print("path是：\(path)")
        //path是：/Users/joy/Library/Developer/CoreSimulator/Devices/363B9CC1-23BC-4817-BC17-8359F5E98631/data/Containers/Bundle/Application/B845C801-5C87-47BB-81AB-F9C025C0B4F0/project1.app
        
        print("items是：\(items)")
        /*
         items是：["_CodeSignature", "project1", "nssl0049.jpg", "Base.lproj", "nssl0046.jpg", "nssl0091.jpg", "nssl0045.jpg", "nssl0051.jpg", "nssl0041.jpg", "nssl0042.jpg", "nssl0043.jpg", "nssl0033.jpg", "Info.plist", "PkgInfo", "nssl0034.jpg"]
         ["nssl0049.jpg", "nssl0046.jpg", "nssl0091.jpg", "nssl0045.jpg", "nssl0051.jpg", "nssl0041.jpg", "nssl0042.jpg", "nssl0043.jpg", "nssl0033.jpg", "nssl0034.jpg"]
         */
        
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
        
        // 檢查 UserDefaults 是否有 PictureStormShowCount 的值
        let userDefaultsCount = defaults.array(forKey: "PictureStormShowCount") as? [Int] ?? nil
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
                if userDefaultsCount == nil {
                    picturesShowCount.append(0) //MARK: 同步建立一個Array來記錄圖片顯示幾片
                    defaults.set(picturesShowCount, forKey: "PictureStormShowCount")
                }
            }
        }
        print("UserDefault資料是", defaults.array(forKey: "PictureStormShowCount") as? [Int] ?? [Int]()) //MARK: 讀取UserDefault
        
        DispatchQueue.main.async {
            self.showReloadUI()
        }
        //performSelector(onMainThread: #selector(showReloadUI), with: nil, waitUntilDone: false) //UI在背景
        print(pictures)
        print(picturesShowCount)
        print(defaults.array(forKey: "PictureStormShowCount"))
    }

    @objc func showReloadUI() {
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        
        //蘋果新寫法改用UIListContentConfiguration
        var content = cell.defaultContentConfiguration()
        content.text = pictures[indexPath.row]
        
        let userDefault_Key_PictureStormShowCount_Value = defaults.array(forKey: "PictureStormShowCount") as? [Int] ?? [Int]()
        content.secondaryText = "\(userDefault_Key_PictureStormShowCount_Value[indexPath.row])"
        cell.contentConfiguration = content
        
//        //舊的寫法
//        cell.textLabel?.text = pictures[indexPath.row]
//        cell.detailTextLabel?.text = "Cool"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]  //1️⃣MainVC把值給 DetailVC
            
            var userDefault_Key_PictureStormShowCount_Value = defaults.array(forKey: "PictureStormShowCount") as? [Int] ?? [Int]()
            //拿UserDefault 陣列中某個Element更改值
            userDefault_Key_PictureStormShowCount_Value[indexPath.row] += 1
            //拿UserDefault 陣列更新
            defaults.set(userDefault_Key_PictureStormShowCount_Value, forKey: "PictureStormShowCount")

            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}

//: 題目
/*
 Modify project 1 so that it remembers how many times each storm image was shown – you don’t need to show it anywhere, but you’re welcome to try modifying your original copy of project 1 to show the view count as a subtitle below each image name in the table view.
 修改專案 1，使其記住每個風暴圖像的顯示次數 – 您無需在任何位置顯示它，但歡迎您嘗試修改專案 1 的原始副本，以在表檢視中每個圖像名稱下方將檢視計數顯示為副標題。
 */

// 步驟
// 1. UserDefatult 存
// 當VC點擊didSelect進入 DetailVC 記住每個每個 pictures 陣列

// append完成後要存UserDefault
// didSelect要更新UserDefault
