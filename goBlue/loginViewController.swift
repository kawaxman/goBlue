//
//  loginViewController.swift
//  goBlue
//
//  Created by School on 7/2/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit
import Parse


class loginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
            
    @IBOutlet weak var blurredBackground: UIImageView!
    
   
     let blueColor = UIColor(red: 22/255, green: 62/255, blue: 123/255, alpha: 1)
    
    

    
    
    override func viewDidLayoutSubviews() {
        

        
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let loginButtonTap = UITapGestureRecognizer(target: self, action: Selector("loginButtonHandleTap"))
        
        
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = self.view.frame
        blurredBackground.addSubview(blurView)
        
        //textField
        
        loginTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        loginTextField.layer.cornerRadius = 5
        let spacerView = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        loginTextField.leftViewMode = UITextFieldViewMode.Always
        loginTextField.leftView = spacerView
        
        passwordTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        passwordTextField.layer.cornerRadius = 5
        let spacerView1 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        passwordTextField.leftViewMode = UITextFieldViewMode.Always
        passwordTextField.leftView = spacerView1
        
        let loginBtn = UIButton(frame: CGRectMake(40, 200, 140, 40))
        loginBtn.center = CGPointMake(187.5, 520.0);// for center
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.whiteColor().CGColor
        loginBtn.layer.cornerRadius = 20
        loginBtn.titleLabel!.font = UIFont(name: "Futura-Medium", size: 25)
        loginBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginBtn.setTitle("login", forState: UIControlState.Normal)
        loginBtn.addGestureRecognizer(loginButtonTap)
        self.view.addSubview(loginBtn)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(true)
        
        
        
        

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
    
    func loginButtonHandleTap(){

        
        PFUser.logInWithUsernameInBackground(loginTextField.text!, password: passwordTextField.text!) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                print("successfully logged in")
                let next = self.storyboard?.instantiateViewControllerWithIdentifier("rootView")
                self.presentViewController(next!, animated: true, completion: nil)
            } else {
                self.loginTextField.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.7)
                self.passwordTextField.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.7)
                print("Denied Login")
            }
    }
        
    
    }

}
