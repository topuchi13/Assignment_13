//
//  RecipeOfDayTableViewCell.swift
//  RecipeOfDayTableViewCell
//
//  Created by Nika Topuria on 11.10.21.
//

import UIKit
import Kingfisher

class RecipeOfDayTableViewCell: UITableViewCell {

    
    @IBOutlet var recipeOfDayImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        recipeOfDayImage.kf.setImage(with: URL(string: "https://bernard.ge/wp-content/uploads/2020/12/xinklukebi.jpg"))
        recipeOfDayImage.layer.cornerRadius = 23
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
