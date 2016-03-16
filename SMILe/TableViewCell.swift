//
//  TableViewCell.swift
//  SMILe
//
//  Created by Jason Kuan on 15/03/16.
//  Copyright © 2016 jsonkuan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var gameType: UILabel!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var scoreTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
