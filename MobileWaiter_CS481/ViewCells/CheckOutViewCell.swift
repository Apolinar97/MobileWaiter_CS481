//
//  CheckOutViewCell.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/14/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit

class CheckOutViewCell: UITableViewCell {
    
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemQuantLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        //super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
    func setCell(itemName:String, itemQuant:Double) {
        itemNameLabel.text = "Item: " + itemName
        itemQuantLabel.text = "Quant: " + itemQuant.description
    }
    
    
}
