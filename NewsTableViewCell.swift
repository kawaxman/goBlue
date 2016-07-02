//
//  NewsTableViewCell.swift
//  goBlue
//
//  Created by School on 5/30/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit
import Haneke

class NewsTableViewCell: UITableViewCell{

    @IBOutlet var captionLabel: UILabel!
    @IBOutlet var dogImageView: UIImageView!

    var dog: JSON?{
        didSet {
            self.setupDog()
        }
    }
    
    //stopped at 33:06
    
    
    func setupDog(){
//        self.captionLabel.text = self.dog?["caption"]["text"].string
//        if let urlString = self.dog["images"]["standard_resolution"]["url"] {
//            let url = NSURL(string: urlString)
//            self.dogImageView.hnk_setImageFromURL(url!)
//            }
    }
    
    
    
    
    
}
