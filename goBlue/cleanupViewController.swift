//
//  OurViewController1.swift
//  goBlue
//
//  Created by School on 5/30/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit

class cleanupViewController: UIViewController{

    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var collectionView: UICollectionView!

    
    
    let backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
    

    
    
    override func viewDidLoad() {
        self.view.backgroundColor = backgroundColor
        if self.revealViewController() != nil{
            menuButton.target=self.revealViewController()
            menuButton.action="revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
            //CLEANUP COLLECTION VIEW
            
        }
        //navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarPosition: .Any, barMetrics: .Default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        //CLEANUP COLLECTION VIEW
        collectionView.registerNib(UINib(nibName: "cleanupCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCustomCell")

        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib
        }
    }

extension cleanupViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("myCustomCell", forIndexPath: indexPath) as! cleanupCollectionViewCell
        
        
        //CELL MODIFICATIONS TAKE PLACE HERE WITH CELL.OUTLET
        cell.cellLabel.text = "Test test test test"
        cell.delegate = self
        cell.layer.cornerRadius = 5
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 250, height: 130)
    }
    
}

extension cleanupViewController: MyCustomCellCollectionViewCellDelegate {
    func didCellButtonTapped(cell: cleanupCollectionViewCell) {
        let item = collectionView.indexPathForCell(cell)
        print("cell selected \(item?.item)")
    }
    @IBAction func returnToHomeScreen(segue: UIStoryboardSegue) {
    }
}