//
//  ViewController.swift
//  PRƐSS
//
//  Created by Ryan Hebert on 9/27/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        var username: String? = txtUsername.text
        var password: String? = txtPassword.text
        
        //Check in DB if this user exists
    }
    
}

