//
//  MenuItem.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/23/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation

class MenuItem {
    var MenuID:Int = -1
    var restaurantID:Int = -1
    var docID:String = ""
    var itemName:String = ""
    var flags:[String] = [String]() //Contains flags such as spicy,
    var itemDescription:String = ""
    
    init(itemName:String,flags:[String], itemDescription:String, restaurantID:Int, docID:String) {
        self.itemName = itemName
        self.flags = flags
        self.itemDescription = itemDescription
        self.restaurantID = restaurantID
        self.docID = docID
    }
    init() {}
    
    
    
}
