//
//  ItemInfoController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/13/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit

class ItemInfoController: UIViewController {
    var selectedItem:MenuItem?

    @IBOutlet weak var itemPriceLabel: UILabel!
    @IBOutlet weak var itemTypeLabel: UILabel!
    @IBOutlet weak var ItemDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }
    
    func setLabels() {
        itemPriceLabel.text = "Item Price:$ " +  ((selectedItem?.itemPrice.description)!)
        itemTypeLabel.text = "Type: " + selectedItem!.itemType
        ItemDescriptionLabel.text = selectedItem?.itemDescription
        
    }
    
}
