//
//  mapViewController.swift
//  goBlue
//
//  Created by School on 6/29/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class mapViewController: UIViewController {

   
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    var freshLaunch = true
    override func viewWillAppear(animated: Bool) {
        if freshLaunch == true {
            freshLaunch = false
            self.tabBarController!.selectedIndex = 2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        
        self.view.backgroundColor = backgroundColor
        if self.revealViewController() != nil{
            menuButton.target=self.revealViewController()
            menuButton.action="revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        //navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: .Any, barMetrics: .Default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnToHomeScreen(segue: UIStoryboardSegue) {
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
