//
//  loginViewController.swift
//  goBlue
//
//  Created by School on 7/2/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
   
     let blueColor = UIColor(red: 22/255, green: 62/255, blue: 123/255, alpha: 1)
    
    override func viewDidLayoutSubviews() {
        var bottomLine = CALayer()
        bottomLine.frame = CGRectMake(0.0, textField.frame.height - 1, textField.frame.width, 1.0)
        bottomLine.backgroundColor = blueColor.CGColor
        textField.borderStyle = UITextBorderStyle.None
        textField.layer.addSublayer(bottomLine)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
