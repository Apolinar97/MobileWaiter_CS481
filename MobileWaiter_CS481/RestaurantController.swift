//
//  RestaurantController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/30/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import UIKit
import Firebase
class RestaurantController: UIViewController {

    
    @IBOutlet weak var restaurantNameLabel: UILabel!
    var restaurantInstance:Restaurant?
    var menuItemsInstance = Array<MenuItem>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRestaurantLabel()
        printMenuItems()
        
        
    }
    
    func setRestaurantLabel() {
        restaurantNameLabel.text = restaurantInstance?.name
    }
    
    func printMenuItems() {
        print("print menu items called")
        for menuItem in menuItemsInstance {
            print(menuItem)
        }
    }
    
    


}
