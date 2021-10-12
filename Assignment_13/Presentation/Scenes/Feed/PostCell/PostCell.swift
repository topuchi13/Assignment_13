//
//  PostCell.swift
//  PostCell
//
//  Created by Nika Topuria on 12.10.21.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet var userImgSmall: UIImageView!
    @IBOutlet var userFullName: UILabel!
    @IBOutlet var heartIcon: UIImageView!
    @IBOutlet var postMainImage: UIImageView!
    @IBOutlet var postText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userImgSmall.layer.cornerRadius = 16
        postMainImage.layer.cornerRadius = 18
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func makePost(_ post: Post){
        userImgSmall.image = UIImage.init(named: post.userImage)
        postMainImage.image = UIImage.init(named: post.postImage)
        userFullName.text = post.fullName
        postText.text = post.postText
    }
}
