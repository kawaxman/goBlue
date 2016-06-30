//
//  mapTableViewController.swift
//  goBlue
//
//  Created by School on 5/31/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

protocol SideBarTableViewControllerDelegate{
    func sideBarControlDidSelectRow(indexPath:NSIndexPath)
}

class SideBarTableViewController: UITableViewController {
    
    var delegate:SideBarTableViewControllerDelegate?
    var tableData:Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
            cell!.backgroundColor = UIColor.clearColor()
            cell!.textLabel?.textColor = UIColor.darkTextColor()
            
            let selectedView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: cell!.frame.size.width, height: cell!.frame.size.height))
            selectedView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.3)
            
            cell!.selectedBackgroundView = selectedView
        }
        
        
        cell!.textLabel?.text = tableData[indexPath.row]
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        delegate?.sideBarControlDidSelectRow(indexPath)
    }
    
}
