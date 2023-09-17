//
//  ViewController.swift
//  faceID
//
//  Created by Furkan Cingöz on 17.09.2023.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signIn(_ sender: Any) {
        
        let authContext = LAContext()
        var error: NSError?
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
            self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
            print("succses")
        }
        
    }
    
}

