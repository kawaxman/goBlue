//
//  slideNavViewController.swift
//  goBlue
//
//  Created by School on 6/19/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class slideNavViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
        self.profileImageView.clipsToBounds = true
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
