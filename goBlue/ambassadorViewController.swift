//
//  ambassadorViewController.swift
//  goBlue
//
//  Created by School on 6/29/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class ambassadorViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
  
    
    
    let backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = backgroundColor
        if self.revealViewController() != nil{
            menuButton.target=self.revealViewController()
            menuButton.action="revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
