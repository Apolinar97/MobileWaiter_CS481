//
//  ViewController.swift
//  MobileWaiter_CS481
//
//  Created by Poly on 9/22/19.
//  Copyright © 2019 Poly. All rights reserved.
//

import UIKit
import FirebaseUI
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var LogInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logInTapped(_ sender: UIButton) {
        let authUI = FUIAuth.defaultAuthUI()
        
        //check if not nil
        guard authUI != nil else {
            return
        }
        authUI?.delegate = self
        authUI?.providers = [FUIEmailAuth(),FUIGoogleAuth()]
        
        let authViewController = authUI!.authViewController()
        present(authViewController,animated:true,completion: nil)
        
    }
    
}

extension ViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        guard error == nil else {
            //log error here
            return
        }
        
        let userID:String = authDataResult!.user.uid;
        print("The userID is" + userID);
                
        
        performSegue(withIdentifier: "goHome", sender: self)
    }
}
