//
//  PopoverViewController.swift
//  goBlue
//
//  Created by School on 6/15/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController{
    
    @IBOutlet weak var headerImage: UIImageView!
    
    @IBOutlet weak var popoverText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popoverText.text = "Test"

    }
}