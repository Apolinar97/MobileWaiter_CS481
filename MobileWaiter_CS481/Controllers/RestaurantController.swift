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
    
    
    @IBOutlet weak var notificationLabel: UILabel!
    
    
    //Note:     Since there is not Restaurant web client, this method will only
    //          Update the notification label.
    
    //          Possible implementation could that this method sends a notification to a waiter
    //          via a restaurant web client.
    @IBAction func checkInTapped(_ sender: UIButton) {
        
        notificationLabel.textColor = UIColor.green
        notificationLabel.text = "Staff notified"
        
    }
    
    @IBAction func vacateTapped(_ sender: UIButton) {
        notificationLabel.textColor = UIColor.red
        notificationLabel.text = "Come again!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationLabel.text = nil
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
