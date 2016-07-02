//
//  loginViewController.swift
//  goBlue
//
//  Created by School on 7/1/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//


import UIKit

class loginViewController: UIViewController {
    
    @IBAction func about(sender: UIButton) {
        performSegueWithIdentifier("login", sender: sender)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let imageData = NSData(contentsOfURL: NSBundle.mainBundle().URLForResource("loginGoBlue", withExtension: "gif")!)
        let imageGif = UIImage.gifWithData(imageData!)
        let imageView = UIImageView(image: imageGif)
        imageView.frame = CGRect(x: 0.0, y:0.0, width:375.0, height: 667.0)
        view.addSubview(imageView)
        
        let filter = UIView()
        filter.frame = self.view.frame
        filter.backgroundColor = UIColor.grayColor()
        filter.alpha = 0.4
        self.view.addSubview(filter)
        
        //goBlue label
        
        
        let goBlueLabel = UILabel(frame: CGRectMake(0, 100, self.view.bounds.size.width, 110))
        goBlueLabel.textAlignment = NSTextAlignment.Center
        goBlueLabel.text = "goBlue"
        goBlueLabel.textColor = UIColor.whiteColor()
        goBlueLabel.font = UIFont(name: "Futura-Medium", size: 80)
        self.view.addSubview(goBlueLabel)
        
        
        
        let loginBtn = UIButton(frame: CGRectMake(40, 360, 240, 40))
        loginBtn.layer.borderColor = UIColor.whiteColor().CGColor
        loginBtn.center = CGPointMake(187.5, 450.0);// for center
        loginBtn.layer.borderWidth = 2
        loginBtn.layer.cornerRadius = 5
        loginBtn.titleLabel!.font = UIFont.systemFontOfSize(24)
        loginBtn.tintColor = UIColor.whiteColor()
        loginBtn.setTitle("Login", forState: UIControlState.Normal)
        
        
        self.view.addSubview(loginBtn)
        
        let signupBtn = UIButton(frame: CGRectMake(40, 420, 240, 40))
        signupBtn.layer.borderColor = UIColor.whiteColor().CGColor
        signupBtn.center = CGPointMake(187.5, 520.0);// for center
        signupBtn.layer.borderWidth = 2
        signupBtn.layer.cornerRadius = 5
        signupBtn.titleLabel!.font = UIFont.systemFontOfSize(24)
        signupBtn.tintColor = UIColor.whiteColor()
        signupBtn.setTitle("Sign Up", forState: UIControlState.Normal)
        self.view.addSubview(signupBtn)    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
}
