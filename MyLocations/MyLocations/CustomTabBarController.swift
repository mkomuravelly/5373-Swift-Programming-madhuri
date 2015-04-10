//
//  CustomTabBarController.swift
//  MyLocations
//
//  Created by M. Komuravelly on 4/9/15.
//  Copyright (c) 2015 mwsu. All rights reserved.
//

import Foundation
import UIKit
import MapKit

// This class holds the data for my model.
class PointData {
    var lat = 0.0
    var lon = 0.0
}

class CustomTabBarController: UITabBarController {
    
    // Instantiate the one copy of the model data that will be accessed
    // by all of the tabs.
    var currentPoint = PointData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}