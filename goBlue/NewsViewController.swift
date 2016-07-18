//
//  ViewController.swift
//  goBlue
//
//  Created by School on 5/29/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class NewsViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    
    //news system outlets/globals
    @IBOutlet var tableView: UITableView!
    
    var results:[JSON]? = []
    
    let accessToken = "2858760055-HtaepYPH4VYgh15XnYBqFOkV8GZuAF5cJQ0egui"

    //end news system outlets/globals
    
    let backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        
    override func viewDidLoad() {
        self.view.backgroundColor = backgroundColor
        if self.revealViewController() != nil{
            menuButton.target=self.revealViewController()
            menuButton.action="revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
                        
        }
        
        //news View Controller Data drawing
        
        self.loadDogs()
        
        
        
        
        
        
        
        
        
        //end news View Controller Data drawing
        
        
        //navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: .Any, barMetrics: .Default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
        //News View Controller
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.results?.count ?? 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("dogCell")! as UITableViewCell
//        cell.dog = self.results?[indexPath.row]
        return cell
    }
    func loadDogs(){
//        let url = "https://api.twitter.com/1.1/statuses/"
//        Alamofire.request(.GET, url).responseJSON { (json) in
//            print(json)
//                var jsonObj = JSON(json)
//                if let data = jsonObj["data"].arrayValue as [JSON]? {
//                    self.results = data
//                    self.tableView.reloadData()
//                }
//        }
    }
    
    
    
    //end news View Controller
    @IBAction func returnToHomeScreen(segue: UIStoryboardSegue) {
    }
        
    }

