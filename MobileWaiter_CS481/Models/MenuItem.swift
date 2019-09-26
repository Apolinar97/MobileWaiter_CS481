//
//  MenuItem.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/23/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation

class MenuItem {
    var itemID:String = ""
    var itemName:String = ""
    var flags:[String] = [String]() //Contains flags such as spicy,
    var itemDescription:String = ""
    var restaurantID:String = ""
    
    init(itemID:String, itemName:String,flags:[String], itemDescription:String, restaurantID:String) {
        self.itemID = itemID
        self.itemName = itemName
        self.flags = flags
        self.itemDescription = itemDescription
        self.restaurantID = restaurantID
    }
    
    
    
}
