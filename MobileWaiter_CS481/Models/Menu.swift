//
//  Menu.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/23/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation

class Menu {
    var menuID:String = ""
    var menuItems:[MenuItem] = [MenuItem]()
    var restaurantID:String = " "
    
    
    init(menuID:String, menuItems:[MenuItem], restaurantID:String) {
        self.menuID = menuID
        self.menuItems = menuItems
        self.restaurantID = restaurantID
    }
    
    
}

//MARK: Research how to populate object array.
