//
//  PersonCell.swift
//  project10
//
//  Created by Yin Bob on 2024/9/13.
//

import UIKit

class PersonCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAutoLayout()
        setupBorderStyle()
    }
    
    func setupAutoLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 80),
            imageView.heightAnchor.constraint(equalToConstant: 80),
            
            name.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            name.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            name.widthAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    func setupBorderStyle() {
        // 設置圓形圖片
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
        
        // 設置內容模式
        imageView.contentMode = .scaleAspectFill
        
        // 設置邊框（如果需要的話）
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.lightGray.cgColor
    }
}
