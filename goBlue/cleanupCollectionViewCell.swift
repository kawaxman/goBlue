//
//  cleanupCollectionViewCell.swift
//  goBlue
//
//  Created by School on 7/5/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit


protocol MyCustomCellCollectionViewCellDelegate {
    func didCellButtonTapped(cell: cleanupCollectionViewCell)
    
}

class cleanupCollectionViewCell: UICollectionViewCell {
    
    
    var delegate: MyCustomCellCollectionViewCellDelegate!
    
    @IBOutlet weak var cellLabel: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var moreInfoButton: UIButton!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    
    let blueColor = UIColor(red: 22/255, green: 62/255, blue: 123/255, alpha: 1)
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }
    
    
    
    

    
    

//if let image = UIImage(named:"highlightedFavoriteStar") {
//    favoriteStarButton.setImage(image, forState: .Normal)

    


}
