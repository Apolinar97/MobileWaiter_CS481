//
//  CheckOutController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/14/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation
import UIKit
import Firebase
//MARK:Create money type, as project progresses.


class CheckOutController: UIViewController {
    let helper = CheckOutHelper()
    
    var orderDetails:OrderDetails?
    
    @IBOutlet weak var totalCostTipLabel: UILabel!
    @IBOutlet weak var totalCostNoTipLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var tipStepperRef: UIStepper!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var payButtonRef: UIButton!
    
    @IBOutlet weak var confirmLabel: UILabel!
    
    
    var totalPrice:Double = 0.0
    var priceBeforeTip:Double = 0.0
    
    var tipPercent:Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        confirmLabel.text = ""
        calculateTotalPrice()
        setTotalBeforeTip()
        
    }
    
    
    @IBAction func payBillTapped(_ sender: UIButton) {
        
        let orderRef = Firestore.firestore().collection("OrderDetails")
        guard let orderDetails = orderDetails else {
            return
        }
        
        if(!helper.ifOrdered(countArray: orderDetails.itemCount)) {
            //show label that no orders were made.
            print("No orders")
            return
            
        }
        
        payButtonRef.isEnabled = false
        
        confirmLabel.text = "Thank you"
        //Get itemNames and itemPrices from orderDetails. 
        let itemName = helper.getItemNameFromArray(menuItems: orderDetails.menuItems)
        let itemPrices = helper.getItemPriceFromArray(menuItems: orderDetails.menuItems)
        
        orderRef.addDocument(data: ["UserID":orderDetails.userID,
                                    "TimeStamp":Timestamp.init(),
                                    "QuantOrdered":orderDetails.itemCount,
                                    "ItemOrdered":itemName,
                                    "ItemPrices": itemPrices,
                                    "TotalAmount":totalPrice,
            "RestaurantID":orderDetails.restaurantID])
        
        
        
        
      
    }
    
    func calculateTotalPrice() {
        guard let orderDetails = orderDetails else {
            return
        }
        
        if(helper.sizeIsEqual(countArray: orderDetails.itemCount, itemArray: orderDetails.menuItems)) {
            
            for index in 0 ..< orderDetails.itemCount.count {
                let priceForItem = orderDetails.itemCount[index] * orderDetails.menuItems[index].itemPrice
                
                priceBeforeTip = priceBeforeTip + priceForItem
                
                
            }
        }
        
        
    }
    
    func calculateTotalPriceWithTip() {
        
        if(tipStepperRef.value.isZero) {
            totalPrice = priceBeforeTip
        }
        else {
            let tipPercent = tipStepperRef.value/100
            totalPrice = (tipPercent * priceBeforeTip) + priceBeforeTip
        }
        
        
        
    }
    
    
    func setTotalBeforeTip() {
        totalCostNoTipLabel.text = "Before Tip $: " + priceBeforeTip.description
        
        if(tipStepperRef.value.isZero) {
            totalCostTipLabel.text = "Total Price: " + priceBeforeTip.description
        }
        
    }
    
    func setTotalPriceLabel() {
        totalCostTipLabel.text = "After Tip $: " + totalPrice.description
    }
    
    
    
    
    
    
    @IBAction func stepperTapped(_ sender: Any) {
        tipPercentageLabel.text = "Tip %: " + tipStepperRef.value.description
        calculateTotalPriceWithTip()
        setTotalPriceLabel()
    }
    
    
    
    
}

extension CheckOutController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderDetails!.itemCount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let itemQuant = orderDetails!.itemCount[indexPath.row]
        let itemName = orderDetails!.menuItems[indexPath.row].itemName
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderItem") as! CheckOutViewCell
        cell.setCell(itemName:itemName, itemQuant: itemQuant)
        
        return cell
        
        
    }
    
    
}
