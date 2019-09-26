//
//  Restaurant.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/23/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation

class Restaurant {
    var name:String = ""
    var id:String = ""
    var address:String = ""
    var city:String = ""
    var tablesAvailable:Int = -1
    
    
    init(name:String, id:String, address:String, city:String, tablesAvailable:Int) {
        self.name = name
        self.id = id
        self.address = address
        self.city = city
        self.tablesAvailable = tablesAvailable
        
    }
    
    
}
