//
//  MyLocations.swift
//  MyLocations
//
//  Created by M. Komuravelly on 4/9/15.
//  Copyright (c) 2015 Razeware. All rights reserved.
//

import Foundation
import CoreData

class MyLocations: NSManagedObject {

    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var locationDescription: String
    @NSManaged var date: NSTimeInterval
    @NSManaged var placemark: AnyObject
    @NSManaged var category: String

}
