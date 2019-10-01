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
    var id:Int = -1
    var docID:Int = -1
    var address:String = ""
    var city:String = ""
    var tablesAvailable:Int = -1
    
    
    init(name:String, id:Int, docID:Int, address:String, city:String, tablesAvailable:Int) {
        self.name = name
        self.id = id
        self.docID = docID
        self.address = address
        self.city = city
        self.tablesAvailable = tablesAvailable
        
    }
    
    init(id:Int, docID:Int, name:String) {
        self.id = id
        self.docID = docID
        self.name = name
    }
    
    init() {}
    
    
}
