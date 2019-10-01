//
//  RestaurantController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/30/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import UIKit

class RestaurantController: UIViewController {

    
    @IBOutlet weak var restaurantNameLabel: UILabel!
    var restaurantInstance:Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRestaurantLabel()
    }
    
    func setRestaurantLabel() {
        restaurantNameLabel.text = restaurantInstance?.name
    }
    

}
