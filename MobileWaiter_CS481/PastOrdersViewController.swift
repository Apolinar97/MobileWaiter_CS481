//
//  PastOrdersViewController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/16/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit


class PastOrdersViewController: UIViewController {
    
    var pastOrders:Array<PastOrder>?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printArray()
    }
    
    func printArray() {
        guard let pastOrders = pastOrders else {
            return
        }
        
        for orders in pastOrders {
            print(orders.datePurchased)
        }
    }
    
}
