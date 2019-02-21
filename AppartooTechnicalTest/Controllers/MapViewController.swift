//
//  MapViewController.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 17/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    let barServices = BarServices()
    var bars = [Bar]()

    override func viewDidLoad() {
        super.viewDidLoad()
        //focus du map sur paris .. Manque de disponibilité d'un Iphone je ne pouvais pas tester le gps pour centraliser la map sur la position du user
        let location = CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)
        let region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.map.setRegion(region, animated: true)
        bars = barServices.parseBars()
        for item in bars{
            self.map.addAnnotation(CustomPin(pinTitle: item.name, pinSubTitle: "bar", location: CLLocationCoordinate2D(latitude: item.latitude, longitude: item.longitude)))
        }
        self.map.delegate = self
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
        if annotation is MKUserLocation {
            return nil
        }
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customAnnotation")
        annotationView.image = UIImage(named: "drinkPin")
        annotationView.canShowCallout = true
        return annotationView
    }
}
