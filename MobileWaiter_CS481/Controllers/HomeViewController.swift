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
    
    
    @IBOutlet weak var IDTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goTest") {
            let destVC = segue.destination as! TabHeadController
            destVC.restaurantObj = sender as? Restaurant

        }
    }
    
    
    func validateRestuarant()  {
        if IDTextField.text?.isEmpty ?? true {
            errorLabel.text = "Enter ID"
            return
        }
        
        let db = Firestore.firestore()
        
        
        let id: Int? = Int(IDTextField.text!)
        
        
        db.collection("Restaurants").whereField("RestaurantID",isEqualTo: id!).getDocuments() {(snapshot,error) in
            if error != nil {
                print("Error")
            }
            else {
                
                if(snapshot!.isEmpty) {
                    self.errorLabel.text = "Invalid ID"
                    return
                }
                //For Demo Purposes
                
                let restaurant:Restaurant = Restaurant()

                for document in snapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    
                    restaurant.id = document.get("RestaurantID") as! Int
                    restaurant.name = document.get("RestaurantName") as! String

                }
                
                
                self.performSegue(withIdentifier: "goTest", sender: restaurant)

            }
            
            
        }
    
    }
    
    
    
    
    @IBAction func goNextTapped(_ sender: UIButton) {
        validateRestuarant()
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
