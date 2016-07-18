//
//  signupViewController.swift
//  goBlue
//
//  Created by School on 7/4/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit
import Parse

class signupViewController: UIViewController {

    
    @IBOutlet weak var blurredBackground: UIImageView!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordVerificationTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    let blueColor = UIColor(red: 22/255, green: 62/255, blue: 123/255, alpha: 1)
    
    let user = PFUser()
    
    var requiredFields: [UITextField] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attemptLoginTap = UITapGestureRecognizer(target: self, action: Selector("attemptLogin"))
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = self.view.frame
        blurredBackground.addSubview(blurView)
        
        //textField
        
        nameTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        nameTextField.layer.cornerRadius = 5
        let spacerView = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        nameTextField.leftViewMode = UITextFieldViewMode.Always
        nameTextField.leftView = spacerView
        
        emailTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        emailTextField.layer.cornerRadius = 5
        let spacerView1 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        emailTextField.leftViewMode = UITextFieldViewMode.Always
        emailTextField.leftView = spacerView1
        
        passwordTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        passwordTextField.layer.cornerRadius = 5
        let spacerView2 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        passwordTextField.leftViewMode = UITextFieldViewMode.Always
        passwordTextField.leftView = spacerView2
        
        passwordVerificationTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        passwordVerificationTextField.layer.cornerRadius = 5
        let spacerView3 = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
        passwordVerificationTextField.leftViewMode = UITextFieldViewMode.Always
        passwordVerificationTextField.leftView = spacerView3
        
        let loginBtn = UIButton(frame: CGRectMake(40, 200, 140, 40))
        loginBtn.center = CGPointMake(187.5, 580.0);// for center
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.whiteColor().CGColor
        loginBtn.layer.cornerRadius = 20
        loginBtn.titleLabel!.font = UIFont(name: "Futura-Medium", size: 25)
        loginBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginBtn.setTitle("login", forState: UIControlState.Normal)
        loginBtn.addGestureRecognizer(attemptLoginTap)
        self.view.addSubview(loginBtn)
        
        
    }
    
    func attemptLogin(){
        var isValid: Bool
        if nameTextField.text!.characters.count > 0 {
            nameTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
            self.user["name"] = self.nameTextField.text

        }
        if passwordTextField.text!.characters.count > 0 {
            passwordTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        }
        if emailTextField.text!.characters.count > 0 {
            emailTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
            self.user.username = self.emailTextField.text

        }
        if emailTextField.text == PFUser.currentUser()?.username {
            emailTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)

        }
        if passwordVerificationTextField.text!.characters.count > 0 {
            passwordVerificationTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        }
        if passwordTextField.text == passwordVerificationTextField.text {
            passwordVerificationTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
            passwordTextField.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
            self.user.password = self.passwordTextField.text

        }
        if nameTextField.text!.characters.count > 0 && passwordTextField.text!.characters.count > 0 && emailTextField.text!.characters.count > 0 && passwordVerificationTextField.text!.characters.count > 0 && passwordTextField.text == passwordVerificationTextField.text {
            
                        user.signUpInBackgroundWithBlock{
                            (succeeded: Bool, error: NSError?) -> Void in
                            if let error = error {
                                let errorString = error.userInfo["error"] as? NSString
                                print(errorString as? String)
                            } else {
                                
                                dispatch_async(dispatch_get_main_queue(), {

                                let next = self.storyboard?.instantiateViewControllerWithIdentifier("signupContinuation")
                                    self.presentViewController(next!, animated: true, completion: nil)
                                    

                                })
                                
                            }
                            
            }
            
        }
        
        
            var requiredFieldsLength = 3
        
    
            
                if nameTextField.text!.characters.count == 0 {
                    nameTextField.backgroundColor = UIColor.redColor()
                }
                if passwordTextField.text!.characters.count == 0 {
                    passwordTextField.backgroundColor = UIColor.redColor()
                }
                if emailTextField.text!.characters.count == 0 {
                    emailTextField.backgroundColor = UIColor.redColor()
                }
                if passwordVerificationTextField.text!.characters.count == 0 {
                    passwordVerificationTextField.backgroundColor = UIColor.redColor()
                }
                if passwordTextField.text != passwordVerificationTextField.text {
                    passwordVerificationTextField.backgroundColor = UIColor.redColor()
                    passwordTextField.backgroundColor = UIColor.redColor()
                }
                if emailTextField.text != PFUser.currentUser()?.username{
                    emailTextField.backgroundColor = UIColor.redColor()
                }
        
    }
    
        
    
    
    }
    

