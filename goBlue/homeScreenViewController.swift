//
//  loginViewController.swift
//  goBlue
//
//  Created by School on 7/1/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//


import UIKit


class homeScreenViewController: UIViewController {
    
    let blueColor = UIColor(red: 22/255, green: 62/255, blue: 123/255, alpha: 1)

    
    
    
    override func viewDidLoad() {
        
        let loginTap = UITapGestureRecognizer(target: self, action: Selector("loginHandleTap"))
        let signUpTap = UITapGestureRecognizer(target: self, action: Selector("signUpHandleTap"))
        
        super.viewDidLoad()
        
        let imageData = NSData(contentsOfURL: (NSBundle.mainBundle().URLForResource("loginGoBlue", withExtension: "gif"))!)
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
        loginBtn.layer.backgroundColor = UIColor.whiteColor().CGColor
        loginBtn.center = CGPointMake(187.5, 450.0);// for center
        loginBtn.layer.cornerRadius = 20
        loginBtn.titleLabel?.center
        loginBtn.titleLabel!.font = UIFont(name: "Futura-Medium", size: 25)
        loginBtn.setTitleColor(blueColor, forState: .Normal)
        loginBtn.setTitle("Login", forState: UIControlState.Normal)
        loginBtn.addGestureRecognizer(loginTap)
        self.view.addSubview(loginBtn)

        
        let signupBtn = UIButton(frame: CGRectMake(40, 420, 240, 40))
        signupBtn.center = CGPointMake(187.5, 520.0);// for center
        signupBtn.layer.borderWidth = 1
        signupBtn.layer.borderColor = UIColor.whiteColor().CGColor
        signupBtn.layer.cornerRadius = 20
        loginBtn.titleLabel?.center
        signupBtn.titleLabel!.font = UIFont(name: "Futura-Medium", size: 25)
        signupBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        signupBtn.setTitle("Sign Up", forState: UIControlState.Normal)
        signupBtn.addGestureRecognizer(signUpTap)
        self.view.addSubview(signupBtn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    func loginHandleTap() {
        print("tap working")
        performSegueWithIdentifier("goToLogin", sender: nil)
        
    }
    func signUpHandleTap(){
        print("tap working")
        performSegueWithIdentifier("goToSignup", sender: nil)
    }
    

    
}
