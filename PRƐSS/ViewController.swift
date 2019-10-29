//
//  ViewController.swift
//  PRƐSS
//
//  Created by Ryan Hebert on 9/27/19.
//  Copyright © 2019 PRƐSS Dev Team. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    // log in page
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    // athlete register
    @IBOutlet weak var txtEmailAthlete: UITextField!
    
    @IBOutlet weak var txtUsernameAthlete: UITextField!
    
    @IBOutlet weak var txtPasswordAthlete: UITextField!
    
    
    @IBOutlet weak var txtFirstNameAthlete: UITextField!
    
    @IBOutlet weak var txtLastNameAthlete: UITextField!
    
    // coach register
    @IBOutlet weak var txtEmailCoach: UITextField!
    
    @IBOutlet weak var txtUsernameCoach: UITextField!
    
    @IBOutlet weak var txtPasswordCoach: UITextField!
    
    
    @IBOutlet weak var txtFirstNameCoach: UITextField!
    
    @IBOutlet weak var txtLastNameCoach: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnAthleteRegister(_ sender: UIButton) {
        
        let email = txtEmailAthlete.text
        let username = txtUsername.text
        let password = txtPasswordAthlete.text
        
    }
    
    
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        var username: String? = txtUsername.text
        var password: String? = txtPassword.text
        
        //Check in DB if this user exists
    }
    
    
    @IBAction func btnAthleteRegisterPressed(_ sender: UIButton) {
        let email = txtEmailAthlete.text
        let username = txtUsernameAthlete.text
        let password = txtPasswordAthlete.text
        let firstName = txtFirstNameAthlete.text
        let lastName = txtLastNameAthlete.text
        
        //var topLevel: [AnyObject] = []
        
        var tempJSON : [String: String] = [:]
        
        tempJSON["username"] = username
        tempJSON["firstName"] = firstName
        tempJSON["lastName"] = lastName
        tempJSON["password"] = password
        tempJSON["email"] = email
        
        //topLevel.append(tempJSON)
        
        let data = try JSONSerialization()
        
//        let tempUser = User(userID: username, firstName: firstName, lastName: lastName, email: email, coach: false, password: password)
//
        //User.newUser(tempUser)
        
//        newUser(email, username, password, firstName, lastName)
    }
    
    @IBAction func btnCoachRegisterPressed(_ sender: UIButton) {
        
        let email = txtEmailCoach.text
        let username = txtUsernameCoach.text
        let password = txtPasswordCoach.text
        let firstName = txtFirstNameCoach.text
        let lastName = txtLastNameCoach.text
    }
    
    
    
    
}

