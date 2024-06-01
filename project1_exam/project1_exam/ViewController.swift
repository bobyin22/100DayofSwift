//
//  ViewController.swift
//  project1_exam
//
//  Created by Bob on 2024/4/28.
//

import UIKit

class ViewController: UITableViewController {

    
    @IBAction func tapBarItemToShare(_ sender: UIBarButtonItem) {
        let vc = UIActivityViewController(activityItems: ["快去下載我的App拉"], applicationActivities: .none)
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    
    var picturesArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "照片"
        getPictureDataFromXcode()
    }
    
    func getPictureDataFromXcode() {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        print("path\(path)")
        /*
         path/Users/joy/Library/Developer/CoreSimulator/Devices/363B9CC1-23BC-4817-BC17-8359F5E98631/data/Containers/Bundle/Application/5C2B0DA3-441B-4197-B14B-2DAC18B44104/project1_exam.app
         */
        
        let items =  try! fm.contentsOfDirectory(atPath: path)
        print(items)
        /*
         ["_CodeSignature", "nssl0049.jpg", "Base.lproj", "nssl0046.jpg", "nssl0091.jpg", "nssl0045.jpg", "nssl0051.jpg", "nssl0041.jpg", "nssl0042.jpg", "project1_exam", "nssl0043.jpg", "nssl0033.jpg", "Info.plist", "PkgInfo", "nssl0034.jpg"]
         */
        
        for item in items {
            if item.contains(".jpg") {
                picturesArray.append(item)
            }
        }
        picturesArray.sort(using: .localizedStandard)   //字串的soted寫法
        print(picturesArray)
        /*
         ["nssl0049.jpg", "nssl0046.jpg", "nssl0091.jpg", "nssl0045.jpg", "nssl0051.jpg", "nssl0041.jpg", "nssl0042.jpg", "nssl0043.jpg", "nssl0033.jpg", "nssl0034.jpg"]
         */
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        picturesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = picturesArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            //VC1把值給VC2
            vc.titleMessage = "Picture \(indexPath.row) of \(picturesArray.count)"
            vc.receiveImageData = picturesArray[indexPath.row]
            
            //present(vc, animated: true)    //下面推上來VC2 寫法
            navigationController?.pushViewController(vc, animated: true)    //右邊推出VC2 寫法
            
        }
    }
}

