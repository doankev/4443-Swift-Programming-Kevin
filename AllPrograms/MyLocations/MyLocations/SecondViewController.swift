//
//  SecondViewController.swift
//  MyLocations
//
//  Created by Terry Griffin on 3/24/15.
//  Copyright (c) 2015 mwsu. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        let location = CLLocationCoordinate2D(
            //latitude: 51.50007773,
            //longitude: -0.1246402
            latitude: 32.783,
            longitude: -96.8
        )
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Big Ben"
        annotation.subtitle = "London"
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        // Get a reference to the model data from the custom tab bar controller.
        //let model = (self.tabBarController as CustomTabBarController).model
        let currentloc = (self.tabBarController as CustomTabBarController).currentPoint
        
        // This tab will simply access the data and display it when the view
        // appears.
        //nameLabel.text = model.name
        //ageLabel.text = "\(model.age)"
        let location = CLLocationCoordinate2D(
            latitude: currentloc.lat,
            longitude: currentloc.lon
        )
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = " "
        annotation.subtitle = " "
        mapView.addAnnotation(annotation)
    }


}
