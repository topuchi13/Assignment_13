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
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var postMainImage: UIImageView!
    @IBOutlet var postText: UILabel!
    var likedPostIndex: Int?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //likeButton.imageView?.frame.size = CGRect(
        userImgSmall.layer.cornerRadius = 16
        postMainImage.layer.cornerRadius = 18
    }

    @IBAction func likeButtonPressed(_ sender: UIButton) {
        if LikedPostsArray.contains(likedPostIndex!) {
            LikedPostsArray = LikedPostsArray.filter({$0 != likedPostIndex})
        } else {
            LikedPostsArray.append(likedPostIndex!)
        }
        UserDefaults.standard.removeObject(forKey: "LikedPosts")
        UserDefaults.standard.set(LikedPostsArray, forKey: "LikedPosts")
        PostsSource[likedPostIndex!]!.isLiked = !PostsSource[likedPostIndex!]!.isLiked
        NotificationCenter.default.post(name: Notification.Name(rawValue: "didLikePost"), object: nil)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func makePost(_ postIndex: Int){
        likedPostIndex = postIndex
        let post = PostsSource[postIndex]!
        if post.isLiked {
            likeButton.setImage(UIImage.init(named: "ic_liked"), for: .normal)
        } else {
            likeButton.setImage(UIImage.init(named: "ic_heart"), for: .normal)
        }
        userImgSmall.image = UIImage.init(named: post.userImage)
        postMainImage.image = UIImage.init(named: post.postImage)
        userFullName.text = post.fullName
        postText.text = post.postText
    }
    
}
