//
//  MenuViewCell.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/8/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import UIKit

class MenuViewCell: UITableViewCell {

    
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var stepperRef: UIStepper!
    
    @IBAction func stepperIsTapped(_ sender: UIStepper) {
        countLabel.text = String(sender.value)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
    func setMenuItem(menuItem:MenuItem) {
        itemNameLabel.text = menuItem.itemName
    }

}

