//
//  profileViewController.swift
//  goBlue
//
//  Created by School on 6/25/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class profileViewController: UIViewController{
    @IBOutlet weak var profileImage: UIImageView!

    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    @IBOutlet weak var tableView: UITableView!

    
    let backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
    
    var categories = ["Account", "Cleanups",""]
    
    
    
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return categories[section]
//    }
//    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return categories.count
//    }
//    func tableView(tableView: UITableView!, viewForHeaderInSection section: Int) -> UIView!
//    {
//        return tableView.dequeueReusableCellWithIdentifier("header") as? UIView
//
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! CategoryRow
//        return cell
//    }
    
    override func viewDidLoad() {
        self.view.backgroundColor = backgroundColor
        if self.revealViewController() != nil{
            menuButton.target=self.revealViewController()
            menuButton.action="revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())

        super.viewDidLoad()
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
        self.profileImage.clipsToBounds = true
        

        }
        
        //navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: .Any, barMetrics: .Default)
        navigationController?.navigationBar.shadowImage = UIImage()

    func didReceiveMemoryWarning() {
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
    @IBAction func returnToHomeScreen(segue: UIStoryboardSegue) {
        
    }
    
}

