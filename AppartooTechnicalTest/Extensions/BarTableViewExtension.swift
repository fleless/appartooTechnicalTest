//
//  BarTableViewExtension.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 17/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import UIKit
import AlamofireImage
import CoreLocation

extension BarsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (filtring){
            return filteredBars.count
        }else{
            return bars.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = barTable.dequeueReusableCell(withIdentifier: "barCell", for: indexPath) as! BarsTableViewCell
        if (filtring){
            cell.barNom.text = filteredBars[indexPath.row].name
            cell.barAddress.text = filteredBars[indexPath.row].address
            cell.barImage.af_setImage(withURL: URL(string: imagesURL[indexPath.row % 10])!)
            return cell
        } else {
            cell.barNom.text = bars[indexPath.row].name
            cell.barAddress.text = bars[indexPath.row].address
            cell.barImage.af_setImage(withURL: URL(string: imagesURL[indexPath.row % 10])!)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = barTable.indexPathForSelectedRow?.row
        let vc = storyboard?.instantiateViewController(withIdentifier: "details") as? DetailsViewController
        if(filtring){
            vc?.nom = filteredBars[index!].name
            vc?.coordonnees = CLLocationCoordinate2D(latitude: filteredBars[index!].latitude, longitude: filteredBars[index!].longitude)
        }else{
            vc?.nom = bars[index!].name
            vc?.coordonnees = CLLocationCoordinate2D(latitude: bars[index!].latitude, longitude: bars[index!].longitude)
        }
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
