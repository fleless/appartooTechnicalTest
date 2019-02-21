//
//  BarServices.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 17/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import Foundation

class BarServices{
    
    //function to parse JSON from the file Pense bete.json
    func parseBars()->Array<Bar>{
        var bars = [Bar]()
        if let path = Bundle.main.path(forResource: "Pense bete", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(PenseBete.self, from: data)
                for items in jsonData.bars {
                    bars.append(items)
                }
            } catch {
                print("le fichier json est introuvable")
            }
        }
        return bars
    }
}
