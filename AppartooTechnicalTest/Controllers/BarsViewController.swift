//
//  ViewController.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 17/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import UIKit

class BarsViewController: UIViewController {

    @IBOutlet weak var barTable: UITableView!
    @IBOutlet weak var searchingBar: UISearchBar!
    let barServices = BarServices()
    var bars = [Bar]()
    var filteredBars = [Bar]()
    var filtring = false
    //vu que les images ne sont pas accessibles j'ai fait un tableau de 10 url d'images
    var imagesURL = ["https://cdn.pixabay.com/photo/2014/06/26/20/35/club-378021_960_720.jpg","https://cdn.pixabay.com/photo/2017/04/07/01/01/bar-2209813_960_720.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfpATOi7elk7d8Cgvb5Ss_dA-brLGwesmUmx_48MnR4KzCy6CY","https://cdn.pixabay.com/photo/2015/07/02/10/27/bar-828768_960_720.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV11INVWV_05iKZycq_npF2NYQWp_qIW-ZFz6-y83jGph8xfQH","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9pjOtgHoaXzP5sS-njw9m5rfbqg_4QkJ-qo14znartjy0VwIs","https://media-cdn.tripadvisor.com/media/photo-s/0d/a3/61/93/bar-counter.jpg","https://media-cdn.tripadvisor.com/media/photo-s/02/ba/e7/8a/cafe-hyatt-regency.jpg","https://media-cdn.tripadvisor.com/media/photo-s/06/24/1d/d8/120-bar.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQltD_KLzjK8iIylruWTQh5IUG_gD7L-xZFXD5jLPz33YTPWRAq"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barTable.estimatedRowHeight = 144
        barTable.rowHeight = UITableView.automaticDimension
        bars = barServices.parseBars()
        barTable.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        bars = barServices.parseBars()
        barTable.reloadData()
    }

//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: animated)
//    }

}

