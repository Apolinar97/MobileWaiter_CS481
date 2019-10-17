//
//  PastOrder.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/16/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import Firebase

class PastOrder {
    var nameOfItems:Array<String> = Array<String>()
    var quantOrdered:Array<Double> = Array<Double>()
    var restaurantID:Int = -1
    var totalPrice:Double = -1.0
    var datePurchased:Timestamp = Timestamp()
    
    init() {}
    
}
