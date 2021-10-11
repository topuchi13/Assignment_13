//
//  RecipeOfDayTableViewCell.swift
//  RecipeOfDayTableViewCell
//
//  Created by Nika Topuria on 11.10.21.
//

import UIKit

class RecipeOfDayTableViewCell: UITableViewCell {

    
    @IBOutlet var recipeOfDayImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        recipeOfDayImage.layer.cornerRadius = 23
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
