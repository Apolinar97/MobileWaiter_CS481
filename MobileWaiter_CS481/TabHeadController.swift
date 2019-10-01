//
//  TabHeadController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/1/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit



class TabHeadController: UITabBarController {
    var restaurantObj:Restaurant?


    override func viewDidLoad() {
        super.viewDidLoad()
        preparePostSeg()
        
    
    }
    
    
    func preparePostSeg() {
        guard let viewControllers = viewControllers else {
            return
        }
        
        for viewController in viewControllers {
            if let restaurantViewController = viewController as? RestaurantController {
                restaurantViewController.restaurantInstance = restaurantObj
            }
        }
    }
    
    
    
}
