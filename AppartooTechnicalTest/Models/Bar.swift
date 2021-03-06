//
//  Bars.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 17/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import Foundation

struct Bar: Codable{
    var id: Int
    var address: String
    var name: String
    var url: String
    var imageUrl: String
    var latitude: Double
    var longitude: Double
    
    private enum CodingKeys: String, CodingKey {
        case id
        case imageUrl = "image_url"
        case address, name, url, latitude, longitude
    }
    init(id: Int, adress:String, name:String, url: String, imageUrl: String, latiture: Double, longitutde: Double){
        self.id = id
        self.address = adress
        self.name = name
        self.url = url
        self.imageUrl = imageUrl
        self.latitude = latiture
        self.longitude = longitutde
    }
}
