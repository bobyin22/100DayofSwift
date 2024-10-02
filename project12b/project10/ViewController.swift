//
//  ViewController.swift
//  project10
//
//  Created by Yin Bob on 2024/9/13.
//

import UIKit

class ViewController: UICollectionViewController, UINavigationControllerDelegate {

    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPerson))
        
        // 讀取UserDefault
        let defaults = UserDefaults.standard
        
        // 讀取UserDefault key people內的資料
        if let savePeople = defaults.object(forKey: "people") as? Data {
            let jsonDecoder = JSONDecoder()
            
            do {
                // decode UserDefault key people內的資料 賦值給 people 變數
                people = try jsonDecoder.decode([Person].self, from: savePeople)
            } catch {
                print("Failed to load people")
            }
        }
    }
    

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as? PersonCell else {
            fatalError("Unable to dequeue PersonCell.")
        }
        
        let person = people[indexPath.item]
        cell.name.text = person.name
        
        let path = getDocumentsDirectory().appendingPathComponent(person.image)
        cell.imageView.image = UIImage(contentsOfFile: path.path)
        
        cell.imageView.layer.borderColor = UIColor(white: 0, alpha: 0.3).cgColor
        cell.imageView.layer.borderWidth = 2
        cell.imageView.layer.cornerRadius = 3
        cell.layer.cornerRadius = 7
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let person = people[indexPath.item]
                
        //重新命名
        let renameAction = UIAlertAction(title: "重新命名拉",
                                         style: .default) { (action) in
            //裡面多一個Alert
            let ac = UIAlertController(title: "重新命名", message: nil, preferredStyle: .alert)
            ac.addTextField()
            
            ac.addAction(UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] _ in
                guard let newName = ac?.textFields?[0].text, let self = self else { return }
                person.name = newName
                self.save()
                self.collectionView.reloadData()
            })
            
            ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            self.present(ac, animated: true)
        }
        
        //刪除
        let deleteAction = UIAlertAction(title: "刪除",
                                         style: .default) { [weak self] _ in
            guard let self = self else { return }
            //裡面多一個Alert
            self.people.remove(at: indexPath.row)
            self.collectionView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "取消", style: .cancel)
        
        let alert = UIAlertController(title: "你的決定",
              message: nil,
              preferredStyle: .actionSheet)
        alert.addAction(deleteAction)   //加入刪除動作
        alert.addAction(renameAction)   //加入重新命名動作
        alert.addAction(cancelAction)   //加入取消動作

        
             
        self.present(alert, animated: true)
    }
    
    @objc func addNewPerson() {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
}


extension ViewController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        
        let imageName = UUID().uuidString
        let imagePath = getDocumentsDirectory().appendingPathComponent(imageName)
        print("didFinishPickingMediaWithInfo方法 imagePath",imagePath)
        
        //把圖片轉成Jpeg檔
        if let jpegData = image.jpegData(compressionQuality: 0.8) {
            try? jpegData.write(to: imagePath)
        }
        
        let person = Person(name: "沒有名字", image: imageName)
        people.append(person)
        save()
        collectionView.reloadData()
        
        dismiss(animated: true)
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        print("getDocumentsDirectory方法 paths", paths)
        print("getDocumentsDirectory方法 paths[0]", paths[0])
        return paths[0]
    }
    
    // 存入UserDefault
    func save() {
        let jsonEncode = JSONEncoder()
        
        if let saveData = try? jsonEncode.encode(people) {
            let defaults = UserDefaults.standard
            defaults.set(saveData, forKey: "people")
        } else {
            print("Failed to save people.")
        }
    }
}

