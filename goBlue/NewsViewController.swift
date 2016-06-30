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

    override func viewDidLoad() {
        super.viewDidLoad()
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

