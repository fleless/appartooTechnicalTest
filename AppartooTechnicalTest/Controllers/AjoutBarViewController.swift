//
//  AjoutBarViewController.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 26/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import UIKit

class AjoutBarViewController: UIViewController {

    @IBOutlet weak var nomB: UITextField!
    @IBOutlet weak var adresseB: UITextField!
    var newBar: Bar!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func go(_ sender: Any) {
        newBar = Bar(id: 14, adress: adresseB.text!, name: nomB.text!, url: "http://www.rel.com", imageUrl: "http://www.rel.com", latiture: 2.56473, longitutde: 40.2145)
        AppDelegate.newBar = newBar
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "home") as! BarsViewController
        self.navigationController?.popViewController(animated: true)
    }
}
