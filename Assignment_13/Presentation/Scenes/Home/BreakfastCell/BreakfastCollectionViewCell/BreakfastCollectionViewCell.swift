//
//  BreakfastCollectionViewCell.swift
//  BreakfastCollectionViewCell
//
//  Created by Nika Topuria on 11.10.21.
//

import UIKit
import Kingfisher

class BreakfastCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var deliciousText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageView.layer.cornerRadius = 18
        
    }
    
    func makePost(_ postIndex: Int){
        let post = PostsSource[postIndex]!
        imageView.kf.setImage(with: URL(string: post.postImage))
        deliciousText.text = post.postText
    }

}
