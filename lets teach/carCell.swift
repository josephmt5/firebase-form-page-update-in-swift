//
//  carCell.swift
//  Lets Teach
//
//  Created by MacBook Air on 2/21/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit

class carCell: UITableViewCell {

    @IBOutlet weak var carView: UIView!
    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var imageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
