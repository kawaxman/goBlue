//
//  profileBackgroundViewController.swift
//  goBlue
//
//  Created by School on 7/7/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class profileBackgroundViewController: UIViewController {
    
    
    @IBOutlet var backgroundView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageData1 = NSData(contentsOfURL: (NSBundle.mainBundle().URLForResource("loginGoBlue", withExtension: "gif"))!)
        let imageGif1 = UIImage.gifWithData(imageData1!)
        let imageView1 = UIImageView(image: imageGif1)
        imageView1.frame = CGRect(x: 0.0, y:0.0, width:375.0, height: 667.0)
        view.addSubview(imageView1)
        
        let filter1 = UIView()
        filter1.frame = self.view.frame
        filter1.backgroundColor = UIColor.blueColor()
        filter1.alpha = 0.2
        self.view.addSubview(filter1)
        
        let blurEffect1 = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurView1 = UIVisualEffectView(effect: blurEffect1)
        blurView1.frame = self.view.frame
        backgroundView.addSubview(blurView1)

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
