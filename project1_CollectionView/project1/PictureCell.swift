//
//  PictureCell.swift
//  project1
//
//  Created by 邱慧珊 on 2024/9/14.
//

import UIKit

class PictureCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .orange
        setupAutoLayout()
    }
    
    func setupAutoLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            label.widthAnchor.constraint(equalToConstant: 80),
            label.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
}
