//
//  HomeViewController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/22/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import UIKit
import Firebase
class HomeViewController: UIViewController {
    
    //var UserObj:User = User()
    //@IBOutlet weak var currentUserLable: UILabel!

    //let currentUser = Auth.auth().currentUser
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @IBAction func goNextTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goTest", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
