//
//  BarsTableViewCell.swift
//  AppartooTechnicalTest
//
//  Created by Fahmi Barguellil on 17/02/2019.
//  Copyright © 2019 fahmi. All rights reserved.
//

import UIKit

class BarsTableViewCell: UITableViewCell {

    @IBOutlet weak var barImage: UIImageView!
    @IBOutlet weak var barNom: UILabel!
    @IBOutlet weak var barAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
