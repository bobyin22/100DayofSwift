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
                self.collectionView.reloadData()
            })
            
            ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            self.present(ac, animated: true)
        }
        
        //刪除
        let cancelAction = UIAlertAction(title: "刪除",
                                         style: .cancel) { [weak self] _ in
            guard let self = self else { return }
            //裡面多一個Alert
            self.people.remove(at: indexPath.row)
            self.collectionView.reloadData()
        }
        
        let alert = UIAlertController(title: "你的決定",
              message: nil,
              preferredStyle: .alert)
        alert.addAction(cancelAction)   //加入刪除動作
        alert.addAction(renameAction)   //加入重新命名動作
        
             
        self.present(alert, animated: true)
    }
    
    @objc func addNewPerson() {
        let picker = UIImagePickerController()
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
        collectionView.reloadData()
        
        dismiss(animated: true)
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        print("getDocumentsDirectory方法 paths", paths)
        print("getDocumentsDirectory方法 paths[0]", paths[0])
        return paths[0]
    }
}

