//
//  MenuTableViewController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/7/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class MenuTableViewController: UITableViewController {
    
    var menuItemsList:Array<MenuItem>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printArray()
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    */
    
    
    func printArray() {
        for menuItem in menuItemsList! {
            print(menuItem.itemName)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
