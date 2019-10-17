//
//  MyAccountController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/16/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit
import Firebase
class MyAccountController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setWelcomeLabel()
    }

    func setWelcomeLabel() {
        welcomeLabel.text = "Hi " + Auth.auth().currentUser!.displayName! + ","
        
        
    }

    @IBAction func viewPastTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "pastOrders", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "pastOrders") {
            print("Hit!")
            let destVC = segue.destination as! PastOrdersViewController
            getPastOrders(destVC: destVC)
        }
        
        
        
    }
    
    func getPastOrders(destVC:PastOrdersViewController) {
        
        let orderDetailsRef = Firestore.firestore().collection("OrderDetails").order(by:"TimeStamp")
        var pastOrders = Array<PastOrder>()
        
        orderDetailsRef.whereField("UserID", isEqualTo: Auth.auth().currentUser!.uid).getDocuments() {
            (snapShot, error) in
            if(error != nil) {
                print("Error occured in query")
                return
            }
            else if(snapShot!.isEmpty) {
                return
            }
            
            for document in snapShot!.documents {
                
                let pastOrder:PastOrder = PastOrder()
                pastOrder.quantOrdered = document.get("QuantOrdered") as! Array<Double>
                pastOrder.nameOfItems = document.get("ItemOrdered") as! Array<String>
                pastOrder.datePurchased = document.get("TimeStamp") as! Timestamp
                pastOrder.totalPrice = document.get("TotalAmount") as! Double
                
                pastOrders.append(pastOrder)
                
            }
            destVC.pastOrders = pastOrders
            
        }
        
        
    }
    
    
}
