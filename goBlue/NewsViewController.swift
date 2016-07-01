//
//  ViewController.swift
//  goBlue
//
//  Created by School on 5/29/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit


class NewsViewController: UIViewController, UITableViewDataSource {
    
    var results: [AnyObject]? = []
    
    @IBOutlet var tableView:UITableView!
        
    @IBOutlet weak var menuButton: UIBarButtonItem!

    
    let backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        
    override func viewDidLoad() {
        self.view.backgroundColor = backgroundColor
        if self.revealViewController() != nil{
            menuButton.target=self.revealViewController()
            menuButton.action="revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            //Cleanup CollectionView
            
        }
        //navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: .Any, barMetrics: .Default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        self.loadNews()
    }

    
    func loadNews(){
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.results?.count ?? 0
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("newsCell") as! NewsTableViewCell
        return cell
    }
}

