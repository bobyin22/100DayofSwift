//
//  ViewController.swift
//  project1
//
//  Created by 邱慧珊 on 2024/4/27.
//

import UIKit

class ViewController: UICollectionViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm View"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        DispatchQueue.global(qos: .userInitiated).async {
            self.fetchFileData()
        }
        //performSelector(inBackground: #selector(fetchFileData), with: nil)  //資料在背景執行
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
        
        
        for item in items {
            if item.hasPrefix("nssl") {
                for iner in 0...8 {         //items第一個項目被多次載入，讓UI變慢才可以測試
                    pictures.append(item)
                }
                
            }
        }
        
        DispatchQueue.main.async {
            self.showReloadUI()
        }
        //performSelector(onMainThread: #selector(showReloadUI), with: nil, waitUntilDone: false) //UI在背景
        print(pictures)
    }

    @objc func showReloadUI() {
        collectionView.reloadData()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Picture", for: indexPath) as! PictureCell
        cell.label.text = pictures[indexPath.row]
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]  //1️⃣MainVC把值給 DetailVC
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
