//
//  SearchingBarExtension.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 18/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import UIKit

extension BarsViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredBars = bars
        filteredBars = bars.filter({$0.name.contains(searchText) })
        filtring = true
        if(searchText == ""){
            filtring = false
        }
        barTable.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        filtring = false
        searchBar.text = ""
        barTable.reloadData()
    }
}
