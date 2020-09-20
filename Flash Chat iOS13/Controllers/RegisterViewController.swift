//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Vatsal Patel on 21/07/2020.
//  Copyright © 2020 Vatsal Patel. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text , let password = passwordTextfield.text {
            
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let e = error {
                print(e.localizedDescription)
            } else {
                // Navigate to ChatViewController
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
            
            }
            
        }
    }
    
    
}
