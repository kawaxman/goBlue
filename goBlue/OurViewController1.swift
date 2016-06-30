//
//  OurViewController1.swift
//  goBlue
//
//  Created by School on 5/30/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class OurViewController1: UIViewController{



    @IBOutlet weak var collectionView: UICollectionView!

    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    let backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
    
    let identifier = "CellIdentifier"
    
    override func viewDidLoad() {
        self.view.backgroundColor = backgroundColor
        if self.revealViewController() != nil{
            menuButton.target=self.revealViewController()
            menuButton.action="revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        //Cleanup CollectionView
            
        }
    }
}