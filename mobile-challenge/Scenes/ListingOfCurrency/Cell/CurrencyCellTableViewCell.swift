//
//  CurrencyCellTableViewCell.swift
//  mobile-challenge
//
//  Created by Edwy Lugo on 06/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import UIKit

class CurrencyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var currencyCodeLabel: UILabel!

        override func awakeFromNib() {
            super.awakeFromNib()

        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

        }

        func setup(code: String, description: String) {
            currencyCodeLabel.text = "\(code) - \(description)"
            
        }


    }
