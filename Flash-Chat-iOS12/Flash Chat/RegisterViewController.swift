//
//  ViewController.swift
//  Animal Identifier
//
//  Created by Gaurav Gaikwad on 3/24/19.
//  Copyright © 2019 anuja. All rights reserved.
//


import UIKit
import Firebase
import SVProgressHUD
class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in    //closure which have no body (user, error) are the inputs
            
            if error != nil{
                print(error!)
            }
            else{
                print("registration successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        

        
        //TODO: Set up a new user on our Firbase database
        
        

        
        
    } 
    
    
}
