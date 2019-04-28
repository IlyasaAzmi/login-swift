//
//  ViewController.swift
//  login-form
//
//  Created by Ilyasa Azmi on 27/04/19.
//  Copyright © 2019 Ilyasa Azmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var pinField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        let email: String = emailField.text!
        let pin: String = pinField.text!
        
        if email.isEmpty || pin.isEmpty{
            print ("Email is required")
            
            return;
        }
        
        if (email == "admin@admin.com") && (pin == "1234"){
            
            let alert = UIAlertController(title: "Sukses login",
                                          message: "Welcome, back super admin!",
                                          preferredStyle: .alert)
            
            let OkAction = UIAlertAction(title : "OK",
                                         style: .default,
                                         handler: nil)
            
            alert.addAction(OkAction)
            
            present(alert, animated: true, completion: nil)
            
        }else {
            
            let alert =  UIAlertController(title: "Gagal",
                                           message: "Your Email/PIN incorrect",
                                           preferredStyle: .alert)
            
            let OkAction = UIAlertAction(title: "OK",
                                         style: .default,
                                         handler: nil)
            
            alert.addAction(OkAction)
            
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    
}

