//
//  CheckOutHelper.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 10/14/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation

class CheckOutHelper {
    
    func sizeIsEqual(countArray:Array<Double>, itemArray:Array<MenuItem>)->Bool {
        return( countArray.count == itemArray.count )
        
    }
    
    func ifOrdered(countArray:Array<Double>)-> Bool {
        return( countArray.count != 0 )
        
    }
    
    func getItemNameFromArray(menuItems:Array<MenuItem>)-> Array<String> {
        var itemNames = Array<String>()
        for item in menuItems {
            itemNames.append(item.itemName)
        }
        return itemNames
    }
    
    func getItemPriceFromArray(menuItems:Array<MenuItem>)-> Array<Double> {
        var itemPrices = Array<Double>()
        
        for item in menuItems {
            itemPrices.append(item.itemPrice)
        }
        return itemPrices
        
    }
    
    
}
