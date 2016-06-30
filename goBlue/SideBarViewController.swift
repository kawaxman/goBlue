//
//  ViewController.swift
//  goBlue
//
//  Created by School on 5/29/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SideBarDelegate {
    
    @IBOutlet var imageView: UIImageView!
   
    
    var sideBar:SideBar = SideBar()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "image2")
        sideBar = SideBar(sourceView: self.view, menuItems: ["first item", "second item", "funny item", "another item"])
        sideBar.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func sideBarDidSelectButtonAtIndex(index: Int) {
        if index == 0{
            imageView.backgroundColor = UIColor.redColor()
            imageView.image = nil
        } else if index == 1{
            imageView.backgroundColor = UIColor.clearColor()
            imageView.image = UIImage(named: "image2")
        }
}
}

