//
//  CustomPin.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 18/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import Foundation
import MapKit

class CustomPin: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(pinTitle: String, pinSubTitle: String, location: CLLocationCoordinate2D) {
        self.title = pinTitle
        self.subtitle = pinSubTitle
        self.coordinate = location
    }
}
