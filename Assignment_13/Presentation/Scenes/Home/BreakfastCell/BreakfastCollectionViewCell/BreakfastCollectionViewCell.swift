//
//  BreakfastCollectionViewCell.swift
//  BreakfastCollectionViewCell
//
//  Created by Nika Topuria on 11.10.21.
//

import UIKit

class BreakfastCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var deliciousText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageView.layer.cornerRadius = 18
        
    }
    
    func initCel (_ image: String, _ text: String) {
        imageView.image = UIImage.init(named: image)
        deliciousText.text = text
    }

}
