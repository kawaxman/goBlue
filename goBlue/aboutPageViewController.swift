//
//  aboutPageViewController.swift
//  goBlue
//
//  Created by School on 7/6/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class aboutPageViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    let backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: .Any, barMetrics: .Default)
        navigationController?.navigationBar.shadowImage = UIImage()

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    }
}