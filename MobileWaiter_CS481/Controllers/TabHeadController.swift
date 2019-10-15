//
//  TabHeadController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/1/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import Firebase
import UIKit



class TabHeadController: UITabBarController {
    var restaurantObj:Restaurant?
    var menuItems:Array<MenuItem>?
    var OrderItemsDetails:Array<OrderDetails>?
    
    let RestVC = RestaurantController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTabs()
        
    }
    
    
    func setRestID() -> Int {
        guard let viewControllers = viewControllers else {
            return -1
        }
        
        for viewController in viewControllers {
            if let restaurantViewController = viewController as? RestaurantController {
                return restaurantViewController.restaurantInstance?.id ?? -1
            }
        }
        return -1
        
    }
    
    
    
    func prepareTabs() {
        guard let viewControllers = viewControllers else {
            return
        }
        
        for viewController in viewControllers {
            if let restaurantViewController = viewController as? RestaurantController {
                restaurantViewController.restaurantInstance = restaurantObj
            }
            
            if let menuViewController = viewController as? MenuController {
                prepMenuItems(vc: menuViewController)
                
            }
            
           
            
            
        }
    }
    
    func prepMenuItems(vc:MenuController) {
        var menuItems = Array<MenuItem>()
        let menuRef = Firestore.firestore().collection("Menus")
        menuRef.whereField("RestaurantID", isEqualTo: setRestID()).getDocuments(){ (snapShot,error) in
            
            if(error != nil) {
                print("Error in query")
                return
            }
            
            else {
                for document in snapShot!.documents {
                    let item:MenuItem = MenuItem()
                    //print("\(document.documentID) => \(document.data())")
                    item.docID = document.documentID as String
                    //item.itemPrice = Float(truncating: document.get("ItemPrice") as! NSNumber)
                    item.itemPrice = document.get("ItemPrice") as! Double
                    item.MenuID = document.get("MenuID") as! Int
                    item.restaurantID = document.get("RestaurantID") as! Int
                    item.itemDescription = document.get("ItemDescription") as! String
                    item.itemName = document.get("ItemName") as! String
                    item.itemType = document.get("ItemType") as! String
                    
                    menuItems.append(item)
                    
                }
                vc.menuItemsList = menuItems
            }
            
            
            
        }
    }
    
    
   
    
    
}



