//
//  User.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/23/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import Foundation

class User {
    var displayName:String = ""
    var uID:String = ""
    var email:String = ""
    
    
    init(displayName:String, uID:String, email:String) {
        self.displayName = displayName
        self.uID = uID
        self.email = email
    }
    
    init(){}
    
}
