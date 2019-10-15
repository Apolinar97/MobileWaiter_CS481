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
    var itemPrice:Double = -1.0
    var flags:[String] = [String]() //Contains flags such as spicy,
    var itemDescription:String = ""
    var itemType:String = ""
    
    init(itemName:String,flags:[String], itemDescription:String, restaurantID:Int, docID:String, itemPrice:Double) {
        self.itemName = itemName
        self.flags = flags
        self.itemDescription = itemDescription
        self.restaurantID = restaurantID
        self.docID = docID
        self.itemPrice = itemPrice
    }
    init() {}
    
    
    
}
