//
//  PenseBete.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 17/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import Foundation

struct PenseBete: Codable{
    var code: Int
    var bars: [Bar]
    var neighborhoods: [Neighborhoods]
    var city: City
}

