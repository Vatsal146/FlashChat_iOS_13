//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Vatsal Patel on 21/07/2020.
//  Copyright © 2020 Vatsal Patel. All rights reserved.
//
import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e.localizedDescription)
            } else {
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
             }
            
            }
        }
    }
    
}