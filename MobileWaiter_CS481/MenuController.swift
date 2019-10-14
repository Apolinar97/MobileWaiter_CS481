//
//  MenuController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/13/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit
import Firebase
class MenuController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var menuItemsList:Array<MenuItem>?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    @IBAction func confirmTapped(_ sender: UIButton) {
        //let db = Firestore.firestore()
        //let orderDetails = setOrderDetails()
        //db.collection("OrderDetails")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goMore") {
            let destNavVC = segue.destination as! ItemInfoNavigationController
            let targetController = destNavVC.topViewController as! ItemInfoController
            targetController.selectedItem = sender as? MenuItem
            
        }
    }
   
    
}

extension MenuController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItemsList!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let menuItem = menuItemsList![indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier:"menuCell") as! MenuViewCell
            
            cell.setMenuItem(menuItem: menuItem)
            return cell
            
    }
    //Method used to give user more information about MenuItem.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //used for more information
        let menuItem = menuItemsList![indexPath.row]
        performSegue(withIdentifier: "goMore", sender: menuItem)
        
        
    }
    
    func setOrderDetails() -> OrderDetails {
        let cells = self.tableView.visibleCells
        let orderItems = OrderDetails()
        orderItems.userID = Auth.auth().currentUser!.uid
        
        var i:Int = 0
        
        for cell in cells {
            
            let currentItem = menuItemsList![i]
            let selectedCell = cell as! MenuViewCell
            orderItems.menuItems.append(currentItem)
            orderItems.itemCount.append(Float(selectedCell.stepperRef!.value))
            
                        
            i+=1
        }
        orderItems.restaurantID = menuItemsList![i-1].restaurantID
        return orderItems
    }
    
    
    
    
}






