//
//  MapViewController.swift
//  goBlue
//
//  Created by School on 5/29/16.
//  Copyright © 2016 Kent Waxman. All rights reserved.
//
import UIKit
import Mapbox

class MapViewViewController: UIViewController, MGLMapViewDelegate {
    
    
    @IBOutlet var mapView: MGLMapView!
    
    
    var identifierIndex: [String] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        


        addAnnotation("juno beach pier",annotationLatitude: 26.893458,annotationLongitude: -80.055184,annotationTitle: "Juno Beach Pier", annotationSubtitle: "This is the Juno Beach Pier", Identifier: "bluePin")
         addAnnotation("juno beach pier",annotationLatitude: 26.893458,annotationLongitude: -79.055184,annotationTitle: "Juno Beach Pier", annotationSubtitle: "This is the Juno Beach Pier", Identifier: "ambassadorIcon")
        
        
        
    }
        
    func addAnnotation(annotationName: String, annotationLatitude: CLLocationDegrees, annotationLongitude: CLLocationDegrees, annotationTitle: String, annotationSubtitle: String, Identifier: String) {
        
        mapView.delegate = self
        let annotationName = MGLPointAnnotation()
        annotationName.coordinate = CLLocationCoordinate2D(latitude: annotationLatitude, longitude: annotationLongitude)
        annotationName.title = annotationTitle
        annotationName.subtitle = annotationSubtitle
        identifierIndex.append(Identifier)
        
        
        
        mapView.addAnnotation(annotationName)
        
        
    }
    
    
    func mapView(mapView: MGLMapView, rightCalloutAccessoryViewForAnnotation annotation: MGLAnnotation) -> UIView? {
        return UIButton(type: .DetailDisclosure)
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
     func mapView(mapView: MGLMapView, annotation: MGLAnnotation, calloutAccessoryControlTapped control: UIControl) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MapPopoverViewController")
        self.presentViewController(next!, animated: true, completion: nil)
        
    }
     func mapViewAddAnnotation(mapView: MGLMapView, imageForAnnotation annotation: MGLAnnotation ) -> MGLAnnotationImage?{
        
        
        
        var annotationImage = mapView.dequeueReusableAnnotationImageWithIdentifier("")
       
        
        if annotationImage == nil {
            if annotationImage == "ambassadorIcon"{
                var image = UIImage(named: "ambassadorIcon")!
                image = image.imageWithAlignmentRectInsets(UIEdgeInsetsMake(0, 0, image.size.height/3, 0))
                annotationImage = MGLAnnotationImage(image: image, reuseIdentifier: "mapViewPinImage")
            }
        }
        return annotationImage
        }
    }
    
    
     
