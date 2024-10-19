//
//  ViewController.swift
//  project10-12_Milestone
//
//  Created by 邱慧珊 on 2024/10/17.
//

import UIKit

class ViewController: UITableViewController {

    let vc = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Take Photo App"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(openCamera))
        
        
    }
    
    @objc func openCamera(){
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "123"
        return cell
    }

}

extension ViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    // MARK: ImagePickerController Delegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)

        guard let image = info[.editedImage] as? UIImage else {
            print("No image found")
            return
        }

        // print out the image size as a test
        print(image.size)
    }
    
    
}


/*
 Challenge 挑戰
 Your challenge is to put two different projects into one: I’d like you to let users take photos of things that interest them, add captions to them, then show those photos in a table view. Tapping the caption should show the picture in a new view controller, like we did with project 1. So, your finished project needs to use elements from both project 1 and project 12, which should give you ample chance to practice.
 您的挑戰是將兩個不同的專案合二為一：我希望您讓使用者拍攝他們感興趣的事物的照片，為它們添加標題，然後在表格檢視中顯示這些照片。點擊標題應該會在新的檢視控制器中顯示圖片，就像我們對專案 1 所做的那樣。因此，您完成的專案需要同時使用專案 1 和專案 12 中的元素，這應該會給您充足的練習機會。

 This will require you to use the picker.sourceType = .camera setting for your image picker controller, create a custom type that stores a filename and a caption, then show the list of saved pictures in a table view. Remember: using the camera is only possible on a physical device.
 這將要求您使用圖像選取器控制器的picker.sourceType = .camera設置，創建儲存檔名和說明的自定義類型，然後在表格檢視中顯示已保存圖片的清單。請記住：只能在物理設備上使用相機。

 Here are some hints in case you hit problems:
 以下是一些提示，以防您遇到問題：

 You’ll need to make ViewController build on UITableViewController rather than just UIViewController.
 你需要讓 ViewController 構建在 UITableViewController 上，而不僅僅是 UIViewController。
 Just like in project 10, you should create a custom type that stores an image filename and a caption string, then use either Codable or NSCoding to load and save that.
 就像在專案 10 中一樣，您應該創建一個自定義類型來儲存圖像檔名和標題字串，然後使用 Codable 或 NSCoding 載入並保存它。
 Use a UIAlertController to get the user’s caption for their image – a single text field is enough.
 使用UIAlertController獲取使用者圖像的標題 —— 單個文字欄位就足夠了。
 You’ll need to design your detail view controller using Interface Builder, then call instantiateViewController to load it when a table view row is tapped.
 你需要使用 Interface Builder 設計你的細節檢視控制器，然後在點擊表格檢視行時調用 instantiateViewController 來載入它。
 */
