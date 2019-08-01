//
//  ViewController.swift
//  Animal Identifier
//
//  Created by Gaurav Gaikwad on 3/24/19.
//  Copyright © 2019 anuja. All rights reserved.
//


import UIKit
import  Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) {(user, error)in
            
            if error != nil{
                print(error!)
            }
            else{
                print("Log in success")
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToChat", sender: self)  //inside the closure we need to put self before performing segues
            }
            
        }

        
        //TODO: Log in the user
        
        
    }
    


    
}  
