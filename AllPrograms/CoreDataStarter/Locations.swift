//
//  MyLocations.swift
//  MyLocations
//
//  Created by Kevin Doan on 5/8/15.
//  Copyright (c) 2015 Razeware. All rights reserved.
//

import Foundation
import CoreData
import CoreLocation

class Locations: NSManagedObject {

    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var date: NSDate
    @NSManaged var locationDescription: String
    @NSManaged var category: String
    @NSManaged var placemark: CLPlacemark?

}
