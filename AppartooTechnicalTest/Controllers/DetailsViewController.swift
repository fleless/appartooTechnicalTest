//
//  DetailsViewController.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 18/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import UIKit
import MapKit

class DetailsViewController: UIViewController, MKMapViewDelegate {
    
    var nom: String?
    var coordonnees: CLLocationCoordinate2D?
    @IBOutlet weak var mapDetails: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.black
        let region = MKCoordinateRegion(center: coordonnees!, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.mapDetails.setRegion(region, animated: true)
        self.mapDetails.addAnnotation(CustomPin(pinTitle: self.nom!, pinSubTitle: "bar", location: coordonnees!))
        self.mapDetails.delegate = self
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
        if annotation is MKUserLocation {
            return nil
        }
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customAnnotation2")
        annotationView.image = UIImage(named: "drinkPin")
        annotationView.canShowCallout = true
        return annotationView
    }
}
