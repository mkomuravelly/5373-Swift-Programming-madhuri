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
            latitude: 51.50007773,
            longitude: -0.1246402
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
        super.viewWillAppear(animated)
        // Get a reference to the model data from the custom tab bar controller.
        let currentPoint = (self.tabBarController as CustomTabBarController).currentPoint
        
        let location = CLLocationCoordinate2D(
            latitude: currentPoint.lat,
            longitude: currentPoint.lon
        )
        // This tab will simply access the data and display it when the view
        // appears.
        //latLabel.text = currentdata.lat
        //longLabel.text = "\(currentdata.long)"
    }

}

