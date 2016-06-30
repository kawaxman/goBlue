//
//  CleanupMap.swift
//  goBlue
//
//  Created by School on 6/12/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//

import UIKit
import Mapbox

class CleanupMapViewController: UIViewController, MGLMapViewDelegate {

    @IBOutlet var mapView: MGLMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mapView.delegate = self
        
    }
    // Use the default marker; see our custom marker example for more information
    func mapView(mapView: MGLMapView, imageForAnnotation annotation: MGLAnnotation) -> MGLAnnotationImage? {
        return nil
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
    
}
