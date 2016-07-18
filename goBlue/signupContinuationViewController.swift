//
//  signupContinuationViewController.swift
//  goBlue
//
//  Created by School on 7/8/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit
import Parse

extension UIImage {
    var uncompressedPNGData: NSData      { return UIImagePNGRepresentation(self)!        }
    var highestQualityJPEGNSData: NSData { return UIImageJPEGRepresentation(self, 1.0)!  }
    var highQualityJPEGNSData: NSData    { return UIImageJPEGRepresentation(self, 0.75)! }
    var mediumQualityJPEGNSData: NSData  { return UIImageJPEGRepresentation(self, 0.5)!  }
    var lowQualityJPEGNSData: NSData     { return UIImageJPEGRepresentation(self, 0.25)! }
    var lowestQualityJPEGNSData:NSData   { return UIImageJPEGRepresentation(self, 0.0)!  }
}

class signupContinuationViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var profileImageButton: UIButton!
    
    var selectedImage = UIImage()
    
    var image = UIImage()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
         let addImgBtnTapped = UITapGestureRecognizer(target: self, action: Selector("addImageButtonTapped"))

        // Do any additional setup after loading the view.
    //THINGS TO DO FOR TOMORROW
        //2. GET TABLEVIEW ON PROFILE PAGE WORKING
        //3. FIX ISSUE WHEN LOGGING IN (THE ONE WITH NOT LOADING THE CERTAIN SCREENS)
        
        
        welcomeLabel.text = "Welcome, \(PFUser.currentUser()!["name"] as! String)"
        
        self.profileImageButton.layer.cornerRadius = self.profileImageButton.frame.size.width / 2;
        self.profileImageButton.clipsToBounds = true
        
        
        let addImgBtn = UIButton(frame: CGRectMake(40, 200, 140, 40))
        addImgBtn.center = CGPointMake(187.5, 520.0);// for center
        addImgBtn.layer.borderWidth = 1
        addImgBtn.layer.borderColor = UIColor.whiteColor().CGColor
        addImgBtn.layer.cornerRadius = 20
        addImgBtn.titleLabel!.font = UIFont(name: "Futura-Medium", size: 25)
        addImgBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        addImgBtn.setTitle("Continue", forState: UIControlState.Normal)
        addImgBtn.addGestureRecognizer(addImgBtnTapped)
        self.view.addSubview(addImgBtn)
        
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
    @IBAction func selectProfilePictureButtonTapped(sender: AnyObject) {
        
        var myPickerController = UIImagePickerController()
        myPickerController.delegate = self
        myPickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        self.presentViewController(myPickerController, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        selectedImage = (info[UIImagePickerControllerOriginalImage] as? UIImage)!
        
        profileImageButton.setImage(selectedImage, forState: .Normal)
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func addImageButtonTapped(){
        
        let user1 = PFUser()
        
        
        
       let scaledImage = self.scaleImageWith(selectedImage, newSize: CGSizeMake(100, 100))
        
        let imageData = UIImagePNGRepresentation(scaledImage)
        
        let imageFile: PFFile = PFFile(name: "profileImage.png", data: imageData!)!
        
        PFUser.currentUser()?.setObject(imageFile, forKey: "profileImage")
        
        PFUser.currentUser()?.saveInBackground()
        

        let userImageFile = user1["profileImage"] as! PFFile
        userImageFile.getDataInBackgroundWithBlock {
            (imageData: NSData?, error: NSError?) -> Void in
            if error == nil {
                if let imageData = imageData {
                    self.image = UIImage(data:imageData)!
                }
            }
        }
        
        
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("rootView")
        self.presentViewController(next!, animated: true, completion: nil)
        
        
        
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//        if segue.identifier == "rootView" {
//            let dvc = segue.destinationViewController as! ListPage
//            dvc.newImage = image
//        }
//    }
    
    func scaleImageWith (image: UIImage, newSize: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        image.drawInRect(CGRectMake(0, 0, newSize.width, newSize.height))
        var newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
        
    }

    

}
