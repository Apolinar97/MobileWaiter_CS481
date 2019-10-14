//
//  OrderDetails.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/14/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit

class OrderDetails {
    var userID:String = ""
    var restaurantID:Int = -1
    var menuItems:Array<MenuItem> = Array()
    var itemCount:Array<Float> = Array()
    var timeStamp:NSDate = NSDate.init()
    init() {}
    
}
