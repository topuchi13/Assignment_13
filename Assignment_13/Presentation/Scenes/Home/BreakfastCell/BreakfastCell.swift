//
//  BreakfastCell.swift
//  BreakfastCell
//
//  Created by Nika Topuria on 11.10.21.
//

import UIKit

class BreakfastCell: UITableViewCell {

    
    @IBOutlet var breakfastCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //breakfastCollectionView.insetsLayoutMarginsFromSafeArea =
        breakfastCollectionView.delegate = self
        breakfastCollectionView.automaticallyAdjustsScrollIndicatorInsets = false
        breakfastCollectionView.dataSource = self
        breakfastCollectionView.register(UINib(nibName: "BreakfastCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BreakfastCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension BreakfastCell: UICollectionViewDelegate{
    
}

extension BreakfastCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}

extension BreakfastCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BreakfastCollectionViewCell", for: indexPath) as! BreakfastCollectionViewCell
            cell.makePost(indexPath.row)
            return cell
            
    }
    
}
