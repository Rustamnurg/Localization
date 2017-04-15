//
//  Cell.swift
//  Localization
//
//  Created by Rustam N on 15.04.17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
