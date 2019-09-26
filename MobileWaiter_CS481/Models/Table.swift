//
//  Table.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/23/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
class Table {
    var tableID:String = ""
    var restaurantID:String = ""
    var seatsAvailable:Int = -1
    var isAvailable:Bool = false
    
    init(tableID:String, restuarantID:String, seatsAvailable:Int, isAvailable:Bool) {
        self.tableID = tableID
        self.restaurantID = restuarantID
        self.seatsAvailable = seatsAvailable
        self.isAvailable = isAvailable
    }
}
